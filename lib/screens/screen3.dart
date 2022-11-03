import 'package:flutter/material.dart';


class Page3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 150),
          Text(
            'Passer une commande ',
            style: TextStyle(
              color: Colors.black54,
              fontFamily: 'Roboto',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 100),
          Image.asset(
            'assets/images/gif1.gif',
          ),
        ],
      ),
    );
  }
}



