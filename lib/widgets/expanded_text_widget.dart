import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandedTextWidget extends StatefulWidget {
  final String text;

  const ExpandedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  final double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              text: firstHalf,
              size: Dimensions.font16,
              color: AppColors.paraColor,
              height: 1.8,
            )
          : Column(
              children: [
                SmallText(
                  text: hiddenText
                      ? (firstHalf + '...')
                      : (firstHalf + secondHalf),
                  size: Dimensions.font16,
                  color: AppColors.paraColor,
                  height: 1.8,
                ),
                Row(
                  children: [
                    SmallText(
                      text: 'Show more',
                      color: AppColors.mainColor,
                    ),
                    InkWell(
                      onTap: () => {
                        setState(
                          () => hiddenText = !hiddenText,
                        )
                      },
                      child: hiddenText
                          ? Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.mainColor,
                            )
                          : Icon(
                              Icons.arrow_drop_up,
                              color: AppColors.mainColor,
                            ),
                    )
                  ],
                )
              ],
            ),
    );
  }
}
