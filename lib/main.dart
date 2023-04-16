import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/components/BottomNav.dart';
import 'package:mobile_bank/constants/themes.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int _currenIndex = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BottomNav(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
