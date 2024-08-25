import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:harvest_hero/utils/image_analysis_prompts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:harvest_hero/configurations/configurations.dart';
import 'package:progress_builder/progress_builder.dart';

import '../../blocs/google_generative_ai_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class AnalyzeImagePage extends StatefulWidget {
  const AnalyzeImagePage({super.key});

  @override
  State<AnalyzeImagePage> createState() => _AnalyzeImagePageState();
}

class _AnalyzeImagePageState extends State<AnalyzeImagePage> {
  File? _imageFile;

  void _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  void _clearImage() {
    setState(() {
      _imageFile = null;
    });
    context.read<GoogleGenerativeAiBloc>().clearImageAnalysisResponse();
  }

  Map<String, String> selectedProblems = {};

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final autoRouter = AutoRouter.of(context);
    final generatedResponse = context.select(
      (GoogleGenerativeAiBloc bloc) => bloc.state.imageAnalysisResult,
    );
    final appLocalizations = AppLocalizations.of(context)!;
    final problemsFacedByFarmers = getProblemsFacedByFarmers(context);
    return WillPopScope(
      onWillPop: () async {
        context.read<GoogleGenerativeAiBloc>().clearImageAnalysisResponse();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: colorScheme.onPrimary,
          leading: autoRouter.canNavigateBack ? const AutoLeadingButton() : null,
          title: Text(appLocalizations.analyzeImage),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(kPadding * 2),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _imageFile != null
                    ? SizedBox(
                        height: kPadding * 25,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(kPadding * 2),
                              child: Image.file(
                                _imageFile!,
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: kPadding * 2,
                              right: kPadding * 2,
                              child: CircleAvatar(
                                radius: kPadding * 1.5,
                                backgroundColor: colorScheme.onPrimary,
                                child: GestureDetector(
                                  onTap: _clearImage,
                                  child: Icon(Icons.clear,
                                      color: colorScheme.primary,
                                      size: kPadding * 2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: colorScheme.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_a_photo,
                                size: 50,
                                color: colorScheme.onPrimary,
                              ),
                              const SizedBox(height: kPadding),
                              Text(
                                appLocalizations.addImage,
                                style: textTheme.headlineSmall?.copyWith(
                                  color: colorScheme.onPrimary,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                if (_imageFile != null) ...[
                  const SizedBox(height: kPadding * 2),
                  Text(
                    appLocalizations.problemsFaced,
                    style: textTheme.titleSmall,
                  ),
                  const SizedBox(height: kPadding * 2),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: problemsFacedByFarmers.length,
                    itemBuilder: (context, index) {
                      final problems = problemsFacedByFarmers.keys.toList();
                      final problem = problems[index];
                      final prompt = problemsFacedByFarmers[problem] ?? '';
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (selectedProblems.containsKey(problem)) {
                              selectedProblems.remove(problem);
                            } else {
                              selectedProblems[problem] = prompt;
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: kPadding),
                          padding: const EdgeInsets.all(kPadding),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: colorScheme.surface,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              if (selectedProblems.containsKey(problem))
                                Icon(
                                  Icons.check,
                                  color: colorScheme.primary,
                                  size: kPadding * 2,
                                ),
                              const SizedBox(width: kPadding),
                              Expanded(
                                child: Text(
                                  problem,
                                  style: textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: kPadding * 2),
                  if (generatedResponse != null) ...[
                    Text(
                      appLocalizations.generatedResponse,
                      style: textTheme.titleLarge,
                    ),
                    const SizedBox(height: kPadding),
                    Text(
                      generatedResponse,
                      textAlign: TextAlign.justify,
                    ),
                  ] else
                    CircularProgressBuilder(
                      action:  (_) async{
                        List<TextPart> textParts = selectedProblems.values
                            .map((e) => TextPart(e))
                            .toList();
                        List<Part> parts = [
                          ...textParts,
                          DataPart(
                            'image/jpeg',
                            _imageFile!.readAsBytesSync(),
                          ),
                        ];
                        await context.read<GoogleGenerativeAiBloc>().submitParts(parts);
                      } ,
                      builder: (context, action,error) {
                        return Center(
                          child: ElevatedButton(
                            onPressed: action,
                            child: Text(appLocalizations.generateResponse,),
                          ),
                        );
                      }
                    ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
