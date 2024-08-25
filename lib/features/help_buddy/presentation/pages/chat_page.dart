import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:harvest_hero/configurations/configurations.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:harvest_hero/features/help_buddy/help_buddy.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String? valueSelected;
  final _user = const types.User(
    id: "user",
  );

  void _handleSendPressed(types.PartialText message) {}

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appLocalizations = AppLocalizations.of(context)!;
    final List<String> prompts = <String>[
      appLocalizations.hiBuddy,
      appLocalizations.suggestCropsToInvest,
      appLocalizations.improveCrops,
      appLocalizations.waterManagement,
      appLocalizations.cultivateGoodSoil,
      appLocalizations.pestControl,
    ];
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final messages =
        context.watch<GoogleGenerativeAiBloc>().state.generativeChats;

    return Chat(
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
            color: colorScheme.primary.withOpacity(0.85),
            borderRadius: BorderRadius.circular(kPadding * 1.5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  appLocalizations.selectPrompt,
                  style: textTheme.titleMedium?.copyWith(
                    fontSize: 19,
                    color: colorScheme.onPrimary,
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
                    color: theme.colorScheme.primary,
                    style: IconButton.styleFrom(
                        backgroundColor: theme.colorScheme.onPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(kPadding / 1.5),
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
                        horizontal: kPadding / 2,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(kPadding * 2.5),
                      ),
                      child: Center(
                        child: Text(
                          prompts[index],
                          style: theme.textTheme.titleSmall,
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
    );
  }
}
