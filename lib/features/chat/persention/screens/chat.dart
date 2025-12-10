import 'package:cure_team_1/core/common/widgets/custome_text_field.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Customnavigationbar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Customabppar(),
            const SizedBox(
              height: 20,
            ),
            CustomeTextField(
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
            const Favoritesappber(),
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
