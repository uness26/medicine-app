import 'package:flutter/material.dart';
import 'package:frippeji/Product_screen/detailinvacare.dart';
import 'package:frippeji/pannier/basket.dart';
import 'package:frippeji/wishlist/Empty.dart';
import 'package:frippeji/wishlist/full.dart';






class ProductScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Nos Produits'),
          elevation:0,
          ),
          drawer:
          Drawer(
            child: Container(
              color: Colors.white38,
              child: ListView(
                children: [
                  SizedBox(height: 100),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                      title: Text('Pannier'),

                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Basket()))
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('Favoris'),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistFull()))
                  ),
                  ListTile(
                      leading: Icon(Icons.heart_broken),
                      title: Text('Favoris vide'),
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistEmpty()))
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            color: Colors.blue,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(40.0),
                  topRight:Radius.circular(40.0),
                ),
              ),
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Material(
                    elevation: 10,
                    child: ListTile(
                        leading: Image.asset('assets/images/invacare.jpg'),
                        title: Text("Concentrateur d'oxygène Invacare",textAlign: TextAlign.center),
                        subtitle: Text('2900 Dt'),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Invacare()))
                    ),
                  ),
                  SizedBox(height: 20),
                  Material(
                    elevation: 10,
                    child: ListTile(
                        leading: Image.asset('assets/images/scaleo5.png'),
                        title: Text("Concentrateur d'oxygène Scaleo Hoirzon S5",textAlign: TextAlign.center),
                        subtitle: Text('2400 Dt'),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Invacare()))
                    ),
                  ),
                  SizedBox(height: 20),
                  Material(
                    elevation: 10,
                    child: ListTile(
                        leading: Image.asset('assets/images/scaleop5.png'),
                        title: Text("Concentrateur d'oxygène Scaleo Hoirzon P5",textAlign: TextAlign.center),
                        subtitle: Text('9470 Dt'),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Invacare()))
                    ),
                  ),
                  SizedBox(height: 20),
                  Material(
                    elevation: 10,
                    child: ListTile(
                        leading: Image.asset('assets/images/jumao.jpg'),
                        title: Text("Concentrateur d'oxygène JUMAO",textAlign: TextAlign.center),
                        subtitle: Text('2950 Dt'),
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Invacare()))
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
