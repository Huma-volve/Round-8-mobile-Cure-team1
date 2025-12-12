import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({
    super.key,
  });

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection> {
  bool fullText = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About me',
          style: AppTextStyles.styleLarge20,
        ),
        Wrap(
          children: [
            Text(
              fullText == true ? longText : shortText,
              style: AppTextStyles.styleLarge16
                  .copyWith(color: ColorsLight.blueGray),
            ),
            if (!fullText)
              GestureDetector(
                  onTap: () {
                    setState(() {
                      fullText = !fullText;
                    });
                  },
                  child: Text(
                    'Read more',
                    style: AppTextStyles.styleLarge16
                        .copyWith(color: ColorsLight.primaryColor),
                  ))
          ],
        )
      ],
    );
  }
}

String shortText =
    'Dr. Jessica Turner, a board-certified Pulmonologist with over 8 years of experience in diagnosing and treating a';
String longText =
    'Dr. Jessica Turner, a board-certified Pulmonologist with over 8 years of experience in diagnosing and treating a wide range of respiratory and ';
