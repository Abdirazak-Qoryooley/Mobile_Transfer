import 'package:flutter/material.dart';
import 'package:mobile_bank/constants/themes.dart';

class info extends StatelessWidget {
  const info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Info Page',
                style: appthem.kTitle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
