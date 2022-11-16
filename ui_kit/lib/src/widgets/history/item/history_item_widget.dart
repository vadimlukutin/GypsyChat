import 'package:flutter/material.dart';
import 'package:ui_kit/src/resources/app_colors.dart';
import 'package:ui_kit/src/resources/text_styles.dart';

class HistoryItemWidget extends StatelessWidget {
  const HistoryItemWidget({
    required this.text,
    required this.datetime,
    required this.username,
    Key? key,
  }) : super(key: key);

  final String text;
  final String username;
  final String datetime;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = AppColors.color3;

    return DecoratedBox(
      decoration: BoxDecoration(color: backgroundColor),
      child: Center(
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: AppTextStyles.blackS14H120W500,
              ),
              Text(
                '$datetime $username',
                style: AppTextStyles.blackS14H120W500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
