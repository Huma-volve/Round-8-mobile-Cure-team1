import 'package:cure_team_1/core/common/widgets/custome_text_field.dart';
import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';

import 'package:cure_team_1/core/utils/assets.dart';

import 'package:cure_team_1/features/chat/persention/screens/widget/Favoritesappber.dart';
import 'package:cure_team_1/features/chat/persention/screens/widget/customNavigationbar.dart';
import 'package:cure_team_1/features/chat/persention/screens/widget/customabppar.dart';

import 'package:cure_team_1/features/chat/persention/screens/widget/notificationmassage.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController controller = TextEditingController();
  FocusNode _focus = FocusNode();
  List<String> searchHistory = ["robert", "jessica"];
  bool isslected = false;
  @override
  void initState() {
    _focus.addListener(() {
      setState(() {
        isslected = _focus.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const Customnavigationbar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Customabppar(),
            const SizedBox(
              height: 20,
            ),
            CustomeTextField(
              focusnode: _focus,
              perfixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  Assets.resourceImagesMagnifer,
                ),
              ),
              text: 'Search for chat, doctor',
              controller: controller,
            ),
            const SizedBox(
              height: 20,
            ),
            ...(isslected)
                ? [
                    Text(
                      'history',
                      style: AppTextStyles.stylegeorgia27,
                    ),
                    const SizedBox(height: 20),
                    
                  ]
                : [const Favoritesappber()],
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: Notificationmassage())
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
