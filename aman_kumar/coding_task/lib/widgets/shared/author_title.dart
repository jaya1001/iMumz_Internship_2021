import 'package:coding_task/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorDetails extends StatelessWidget {
  final String name;
  final String description;

  final Color backgroundColor;
  AuthorDetails({
    required this.name,
    required this.backgroundColor,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Container(
          color: backgroundColor,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            name,
            style: BrandStyles.paragraphSmallStyleBold.copyWith(
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            description,
            style: BrandStyles.paragraphSmallStyle,
          ),
        ),
      ],
    );
  }
}
