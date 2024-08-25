import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Map<String,dynamic> getProblemsFacedByFarmers(BuildContext context) {
  final appLocalizations = AppLocalizations.of(context)!;
  return {
    appLocalizations.issueWithCrop: appLocalizations.issueWithCropPrompt,
    appLocalizations.issueWithTexture: appLocalizations.issueWithTexturePrompt,
    appLocalizations.issueWithPests: appLocalizations.issueWithPestsPrompt,
  };
}
