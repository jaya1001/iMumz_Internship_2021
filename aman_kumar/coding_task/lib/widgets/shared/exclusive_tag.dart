import 'package:coding_task/constants/styles.dart';
import 'package:flutter/material.dart';

class ExclusiveTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Exclusively for ",
        style: BrandStyles.paragraphSmallStyle,
        children: [
          TextSpan(
              text: "Baby care program premium",
              style: BrandStyles.paragraphSmallStyleBold),
          WidgetSpan(
            baseline: TextBaseline.alphabetic,
            alignment: PlaceholderAlignment.aboveBaseline,
            child: Image.asset(
              'static_assets/tilted-crown-icon.png',
              scale: 3,
            ),
          )
        ],
      ),
    );
  }
}
