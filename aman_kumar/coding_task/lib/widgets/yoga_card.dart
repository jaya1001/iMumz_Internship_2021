import 'package:coding_task/constants/colors.dart';
import 'package:coding_task/constants/styles.dart';
import 'package:coding_task/models/masterclass.dart';
import 'package:coding_task/widgets/shared/author_title.dart';
import 'package:coding_task/widgets/shared/date_time_widget.dart';
import 'package:coding_task/widgets/shared/exclusive_tag.dart';
import 'package:flutter/material.dart';

class YogaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        height: 230,
        width: size.width * .95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: BrandColors.lightGreen,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    yogaClass.title,
                    style: BrandStyles.headingStyle,
                  ),
                  SizedBox(height: 12),
                  Text(
                    yogaClass.description!,
                    style: BrandStyles.paragraphStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(height: 24),
                  DateTimeText(
                    date: yogaClass.eventDate,
                    startTime: yogaClass.eventStartTime,
                    endTime: yogaClass.eventEndTime,
                  ),
                  Spacer(),
                  yogaClass.isExclusive ? ExclusiveTag() : Container(),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'static_assets/meditating-woman.png',
                    scale: 2.4,
                  ),
                  SizedBox(height: 6),
                  AuthorDetails(
                    name: yogaClass.author,
                    backgroundColor: BrandColors.white,
                    description: yogaClass.authorDescription,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
