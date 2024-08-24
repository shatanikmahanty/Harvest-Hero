// Global APP - specific constants

// import 'package:statuscodefarmersapp/configurations/constants/fonts.gen.dart';

import 'package:flutter/material.dart';

///Generate by running ```fluttergen``` in the terminal
// export 'assets.gen.dart';

const kAppTitle = 'Farmers App';
const kAppBarTitle = 'FarmHero';
const kBrandName = 'CatGptCoders';

const kBrandGradient = [
  Color(0xFF4068bd),
  Color(0xFF3e64b5),
  Color(0xFF7f66c8),
  Color(0xFFc13485),
];

//TODO: Add app's font family
const kBrandFontFamily = "FontFamily.quando";
const kFontFamily = "FontFamily.roboto";

const problemsFacedByFarmers = {
  "Identify issues with this crop based on color": "Analyze the provided image of the crop and describe any issues based on its color, including possible nutrient deficiencies, diseases, or environmental stress.",
  "Identify issues with this crop based on texture" : "Examine the provided image of the crop and identify any problems related to texture, such as signs of overwatering, disease, or physical damage to the plant tissue.",
  "Identify pests affecting this crop" : "Inspect the provided image of the crop and detect any pests that may be affecting it, providing information on the type of pest and potential control methods."
};
