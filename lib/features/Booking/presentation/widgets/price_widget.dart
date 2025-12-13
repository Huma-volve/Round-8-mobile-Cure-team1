import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: 'Price',
                style: AppTextStyles.styleLarge16
                    .copyWith(fontSize: 24, color: ColorsLight.primaryColor)),
            TextSpan(
                text: ' hour',
                style: AppTextStyles.styleLarge16.copyWith(
                  fontSize: 12,
                )),
          ]),
        ),
        const Spacer(),
        Text(
          "350\$",
          style: AppTextStyles.styleMedium16.copyWith(color: ColorsLight.error),
        )
      ],
    );
  }
}
