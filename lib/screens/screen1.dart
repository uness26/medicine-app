import 'package:flutter/material.dart';


class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:
     Center(
       child: Container(
         child: Image.asset(
           'assets/images/logo.png',
         ),
       ),
     )
    );
  }
}


