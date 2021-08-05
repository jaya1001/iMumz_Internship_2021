import 'package:coding_task/constants/colors.dart';
import 'package:coding_task/constants/styles.dart';
import 'package:coding_task/models/masterclass.dart';
import 'package:coding_task/widgets/shared/author_title.dart';
import 'package:coding_task/widgets/shared/date_time_widget.dart';
import 'package:coding_task/widgets/shared/exclusive_tag.dart';
import 'package:flutter/material.dart';

class PregnancyMasterclassCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        height: 260,
        width: size.width * .95,
        decoration: BoxDecoration(
          color: BrandColors.cream,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          top: 20,
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              color: BrandColors.lightGreen,
                              borderRadius: BorderRadius.circular(120),
                            ),
                          ),
                        ),
                        Image.asset(
                          'static_assets/doctor-image.png',
                          scale: 2,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    AuthorDetails(
                      name: pregnancyClass.author,
                      backgroundColor: BrandColors.lightGreen,
                      description: pregnancyClass.authorDescription,
                    ),
                  ],
                ),
                SizedBox(width: 18),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        pregnancyClass.title,
                        style: BrandStyles.headingStyle.copyWith(fontSize: 24),
                      ),
                      SizedBox(height: 24),
                      DateTimeText(
                        isPregnancy: true,
                        date: pregnancyClass.eventDate,
                        startTime: pregnancyClass.eventStartTime,
                        endTime: pregnancyClass.eventEndTime,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            pregnancyClass.isExclusive ? ExclusiveTag() : Container(),
          ],
        ),
      ),
    );
  }
}
