import 'package:cure_team_1/core/theme/app_text_styles.dart';
import 'package:cure_team_1/core/utils/assets.dart';
import 'package:cure_team_1/features/chat/persention/screens/widget/customabppar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [Customabppar()],
        ),
      ),
    );
  }
}
