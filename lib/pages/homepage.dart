import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_bank/constants/themes.dart';
import 'package:mobile_bank/pages/inforamtion_page.dart';

class homepage2 extends StatefulWidget {
  const homepage2({Key? key}) : super(key: key);

  @override
  State<homepage2> createState() => _homepage2State();
}

class _homepage2State extends State<homepage2> {
  late TextEditingController _NumberController = TextEditingController();
  late TextEditingController _MoneyController = TextEditingController();
  late String numberPost = '';
  late String moneyPost = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            numberPost,
            style: appthem.kTitle,
          ),
          Text(
            moneyPost,
            style: appthem.kTitle,
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextField(
                controller: _NumberController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Number'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextField(
                controller: _MoneyController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Money'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Center(
              child: SizedBox(
                width: 380,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: ElevatedButton(
                    onPressed: () {
                      showAlertDialog(context);
                      setState(() {
                        numberPost = _NumberController.text;
                        moneyPost = _MoneyController.text;
                      });
                    },
                    child: Text(
                      'SEND',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => info()));
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
        "[-EVCplus-] 10 ayaad u wareejisay 617382769, Tar:13/4/23 13:48:20,haraagaaga  waa    20 sano oo adeeg bulsho ah"),
    content: TextField(
      decoration: InputDecoration(hintText: 'Geli PIN-KAAGA'),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
