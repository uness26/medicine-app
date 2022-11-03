import 'package:flutter/material.dart';

class WishlistEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset('assets/images/empty-wishlist.png'),
          ),
          Text(
              'Your Wishlist Is Empty',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              )
          ),
          SizedBox(height: 30),
          Text(
            'Explore more and shortlist some items',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'EDU',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 70),
          Material(
            elevation: 20,
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              child: RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.redAccent,
                child: Text(
                  'Add a wish'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
