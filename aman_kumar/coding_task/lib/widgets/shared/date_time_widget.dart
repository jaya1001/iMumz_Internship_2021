import 'package:coding_task/constants/colors.dart';
import 'package:coding_task/constants/styles.dart';
import 'package:flutter/material.dart';

class DateTimeText extends StatelessWidget {
  final String date;
  final String startTime;
  final String endTime;
  final bool isPregnancy;
  const DateTimeText({
    this.isPregnancy = false,
    required this.date,
    required this.startTime,
    required this.endTime,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          date,
          style: isPregnancy
              ? BrandStyles.paragraphSmallStyle
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w500)
              : BrandStyles.paragraphStyleBold,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 6,
            height: 6,
            child: Text(" "),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: BrandColors.green,
            ),
          ),
        ),
        Text(
          '$startTime-',
          style: isPregnancy
              ? BrandStyles.paragraphSmallStyle
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w500)
              : BrandStyles.paragraphStyleBold,
        ),
        Text(
          endTime,
          style: isPregnancy
              ? BrandStyles.paragraphSmallStyle
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w500)
              : BrandStyles.paragraphStyleBold,
        ),
      ],
    );
  }
}
