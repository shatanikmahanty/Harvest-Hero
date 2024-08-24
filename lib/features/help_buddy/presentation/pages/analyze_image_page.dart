import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:harvest_hero/configurations/configurations.dart';

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
  }

  Map<String, String> selectedProblems = {};

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final autoRouter = AutoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.onPrimary,
        leading: autoRouter.canNavigateBack ? const AutoLeadingButton() : null,
        title: const Text('Analyze Image'),
      ),
      body: Container(
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
                        color: colorScheme.surface,
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
                            'Add Image',
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
                'Problems faced',
                style: textTheme.titleSmall,
              ),
              const SizedBox(height: kPadding * 2),
              ListView.builder(
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
                          if(selectedProblems.containsKey(problem))
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
              ElevatedButton(
                onPressed: () {},
                child: const Text('Generate response'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
