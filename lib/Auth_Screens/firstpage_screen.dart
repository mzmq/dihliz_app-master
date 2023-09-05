import 'package:flutter/material.dart';

import 'loginscreen.dart';



class FirstPageScreen extends StatefulWidget {
  const FirstPageScreen({super.key});

  @override
  State<FirstPageScreen> createState() => _FirstPageScreenState();
}

class _FirstPageScreenState extends State<FirstPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "image/Artboard 14.png",
              width: 250,
            ),
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "image/Artboard 10.png",
              width: 180,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "hello how are you dsfdsfds fdfsd dsfsd\nFine and you\nI like play football",
              style:
                  TextStyle(color: Color.fromRGBO(91, 91, 91, 1), fontSize: 15),
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(38, 50, 56, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
