import 'package:flutter/material.dart';
import 'package:frippeji/Product_screen/detailinvacare.dart';
import 'package:frippeji/shop_items.dart';


class ItemWidget extends StatelessWidget {
  final Item item;
  final Animation<double> animation;
  final VoidCallback onClicked;


  const ItemWidget ({
    required this.item,
    required this.animation,
    required this.onClicked,
    Key? key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizeTransition(
    sizeFactor: animation,
    child: Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(item.urlImage),
        ),
          title: Text(item.title, style: TextStyle(fontSize: 20)),
        subtitle: Text(item.price),
        trailing: IconButton(
          icon: Icon(Icons.clear, color: Colors.white, size: 32),
          onPressed: onClicked,
        ),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Invacare()))
      ),
    ),
  );
}