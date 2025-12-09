import 'package:cure_team_1/features/chat/persention/screens/widget/customabppar.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Customabppar(),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(245, 246, 247, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
