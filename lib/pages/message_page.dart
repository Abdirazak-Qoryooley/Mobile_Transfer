import 'package:flutter/material.dart';
import 'package:mobile_bank/constants/themes.dart';

class messages extends StatefulWidget {
  const messages({Key? key}) : super(key: key);

  @override
  State<messages> createState() => _messagesState();
}

class _messagesState extends State<messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'messages',
            style: appthem.kTitle,
          ))
        ],
      ),
    );
  }
}
