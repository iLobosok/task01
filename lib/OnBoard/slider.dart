import 'package:flutter_task01/constants.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider({
    required this.sliderImageUrl,
    required this.sliderHeading,
    required this.sliderSubHeading,
  });
}

final sliderArrayList = [
  Slider(
    sliderImageUrl: 'assets/others_icons/slider0.png',
    sliderHeading: Constants.Slide_1,
    sliderSubHeading: Constants.Desc_4,
  ),
  Slider(
    sliderImageUrl: 'assets/others_icons/slider1.png',
    sliderHeading: Constants.Slide_2,
    sliderSubHeading: Constants.Desc_4,
  ),
  Slider(
    sliderImageUrl: 'assets/others_icons/slider2.png',
    sliderHeading: Constants.Slide_3,
    sliderSubHeading: Constants.Desc_4,
  ),
  Slider(
    sliderImageUrl: 'assets/others_icons/slider3.png',
    sliderHeading: Constants.Slide_4,
    sliderSubHeading: Constants.Desc_4,
  ),
];
