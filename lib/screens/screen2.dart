import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:
      Padding(
        padding: EdgeInsets.all(70.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 78),
            Text(
              'Faire une visite',
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
              'assets/images/2b32b59dbfc427812eef579985234524.gif',
            ),
          ],
        ),
      ),
    );
  }
}

