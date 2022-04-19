import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expanded_text_widget.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(iconData: Icons.clear),
                  AppIcon(iconData: Icons.shopping_cart_outlined),
                ]),
            toolbarHeight: 70,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        Dimensions.radius20,
                      ),
                      topRight: Radius.circular(
                        Dimensions.radius20,
                      )),
                ),
                child: Center(
                    child: BigText(
                  text: "Chinese Side",
                  size: Dimensions.font26,
                )),
                padding: EdgeInsets.only(
                    top: Dimensions.height10 / 2, bottom: Dimensions.height10),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food0.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: const ExpandedTextWidget(
                    text:
                        "Chinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciate Chinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciateChinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciate Chinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciateChinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciate Chinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciate Chinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciateChinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciate Chinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciateChinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciateChinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciate Chinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciateChinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciate Chinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciateChinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features. With these three characteristics, it is not only tasty but also a work of art for people to appreciate",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: Dimensions.height10,
                bottom: Dimensions.height10,
                left: Dimensions.width20 * 2,
                right: Dimensions.width20 * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconData: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                ),
                BigText(
                    text: '\$12.88 ' ' X ' ' 0',
                    color: AppColors.mainBlackColor,
                    size: Dimensions.font26),
                AppIcon(
                  iconData: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                )
              ],
            ),
          ),
          Container(
            height: Dimensions.height120,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20,
                bottom: Dimensions.height30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
              color: AppColors.buttonBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      left: Dimensions.width20,
                      bottom: Dimensions.height20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      left: Dimensions.width20,
                      bottom: Dimensions.height20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
