import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:harvest_hero/configurations/configurations.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:harvest_hero/features/help_buddy/help_buddy.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String? valueSelected;
  final List<String> prompts = <String>[
    'Hi Buddy?',
    "What's today's temperature?",
    'Tell me a joke.',
    'Remind me to call mom.',
  ];
  final _user = const types.User(
    id: "user",
  );

  void _handleSendPressed(types.PartialText message) {}

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const List<String> languages = <String>['ENG', 'BEN', 'HIN'];
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final messages =
        context.watch<GoogleGenerativeAiBloc>().state.generativeChats;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: theme.colorScheme.onPrimary,
          leading: const Icon(Icons.arrow_left, size: kPadding * 4),
          title: Text(
            "HelpBuddy",
            style: theme.textTheme.titleMedium?.copyWith(
                color: AppColors.heading, fontWeight: FontWeight.normal),
          ),
          actions: [
            DropdownButtonHideUnderline(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: kPadding),
                decoration: BoxDecoration(
                  color: theme.colorScheme.outline,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton<String>(
                  dropdownColor: theme.colorScheme.onPrimary,
                  value: valueSelected,
                  style: theme.textTheme.titleSmall?.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.normal),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      valueSelected = value!;
                    });
                  },
                  items:
                      languages.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(width: kPadding),
          ],
        ),
        body: Chat(
          messages: messages,
          onSendPressed: _handleSendPressed,
          showUserAvatars: true,
          showUserNames: true,
          user: _user,
          customBottomWidget: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(kPadding * 1.5),
            margin: const EdgeInsets.all(kPadding * 1.5),
            decoration: BoxDecoration(
                color: colorScheme.outlineVariant.withOpacity(0.7),
                borderRadius: BorderRadius.circular(kPadding * 1.5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Select your prompt',
                      style: textTheme.titleMedium?.copyWith(
                        fontSize: 19,
                        color: colorScheme.onSurfaceVariant.withOpacity(0.7),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: kPadding * 4,
                      width: kPadding * 4,
                      child: IconButton(
                        onPressed: () {
                          context.router.push(const AnalyzeImageRoute());
                        },
                        icon: const Icon(Icons.add),
                        color: theme.colorScheme.onPrimary,
                        style: IconButton.styleFrom(
                            backgroundColor:
                                theme.colorScheme.onPrimaryContainer,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(kPadding / 1.5),
                            ),
                            padding: EdgeInsets.zero),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kPadding * 2,
                ),
                SizedBox(
                  height: kPadding * 5,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: prompts.length,
                    itemBuilder: (context, index) {
                      final prompt = prompts[index];
                      return GestureDetector(
                        onTap: () {
                          context
                              .read<GoogleGenerativeAiBloc>()
                              .submitPrompt(prompt);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(kPadding),
                          margin: const EdgeInsets.symmetric(
                              horizontal: kPadding / 2),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(kPadding * 2.5),
                          ),
                          child: Center(
                            child: Text(
                              prompts[index],
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
