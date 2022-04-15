import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController _pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildPageItem(index);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          color: const Color(0xFF69c5df),
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image/food0.png"),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120,
          margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Chinese Slides"),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: AppColors.mainColor,
                          size: 15,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SmallText(text: '4.5'),
                    const SizedBox(width: 10),
                    SmallText(text: '1287 Comments'),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    IconAndText(
                        icon: Icons.circle_sharp,
                        iconColor: AppColors.iconColor1,
                        text: 'Normal'),
                    IconAndText(
                        icon: Icons.location_on,
                        iconColor: AppColors.mainColor,
                        text: '1.2km'),
                    IconAndText(
                        icon: Icons.access_time_rounded,
                        iconColor: AppColors.iconColor2,
                        text: '32min')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
