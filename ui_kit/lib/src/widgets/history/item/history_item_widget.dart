import 'package:flutter/material.dart';
import 'package:ui_kit/src/resources/app_colors.dart';
import 'package:ui_kit/src/resources/text_styles.dart';

class HistoryItemWidget extends StatelessWidget {
  const HistoryItemWidget({
    required this.text,
    required this.datetime,
    required this.username,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final String text;
  final String username;
  final String datetime;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = AppColors.color3;

    return Padding(
      padding: EdgeInsets.only(top: 5.0, right: 5.0, left: 50.0),
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      text,
                      style: AppTextStyles.color2S16H120W500,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '$username $datetime',
                      style: AppTextStyles.color2S14H120W500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
