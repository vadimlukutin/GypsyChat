import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/src/resources/app_colors.dart';
import 'package:ui_kit/src/resources/assets.dart';
import 'package:ui_kit/src/resources/text_styles.dart';

class SenderWidget extends StatelessWidget {
  const SenderWidget({
    required this.textEditingController,
    required this.onSendTap,
    Key? key,
  }) : super(key: key);

  final GestureTapCallback? onSendTap;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = AppColors.color3;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 5.0,
          right: 5.0,
          bottom: 20.0,
          left: 5.0,
        ),
        child: SizedBox(
          child: Row(
            children: [
              Flexible(
                child: CupertinoTextField(
                  style: AppTextStyles.blackS16H120W500,
                  decoration: BoxDecoration(
                    color: AppColors.color2,
                  ),
                  controller: textEditingController,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              GestureDetector(
                onTap: onSendTap,
                child: SvgPicture.asset(
                  Assets.iconSvgSenderCustom,
                  width: 40.0,
                  height: 40.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
