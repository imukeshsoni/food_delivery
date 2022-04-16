import 'package:get/get.dart';

class Dimensions {
  static final screenHeight = Get.context!.height;

  static final pageSliderBannerHeight = screenHeight / 2.64;
  static final pageSliderBannerImageHeight = screenHeight / 3.84;
  static final pageSliderBannerTextHeight = screenHeight / 7.03;

  // Dynamic height for margin and padding
  static final height10 = screenHeight / 84.4;
  static final height15 = screenHeight / 56.27;
  static final height20 = screenHeight / 42.2;
  static final height30 = screenHeight / 28.13;
  static final height45 = screenHeight / 18.75;

  // Dynamic width for margin and padding
  static final width10 = screenHeight / 84.4;
  static final width15 = screenHeight / 56.27;
  static final width20 = screenHeight / 42.2;
  static final width30 = screenHeight / 28.13;
  static final width45 = screenHeight / 18.75;

  // dynamic font sizes
  static final font20 = screenHeight / 42.2;

  // dynamic radius
  static final radius15 = screenHeight / 56.27;
  static final radius20 = screenHeight / 42.2;
  static final radius30 = screenHeight / 28.13;

  // dynamic iconSizes
  static final iconSize24 = screenHeight / 35.17;
}
