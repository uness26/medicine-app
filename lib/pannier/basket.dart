import 'package:flutter/material.dart';
import 'package:frippeji/Data.dart';
import 'Item_widget.dart';
import 'package:frippeji/shop_items.dart';


class Basket extends StatelessWidget {
  final String title = 'Pannier';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(title: title),
  );
  }

  class MainPage extends StatefulWidget {
    final String title;
    const MainPage({
      required this.title,
  });

    @override
    _MainPageState createState() => _MainPageState();
  }

  class _MainPageState extends State<MainPage> {
  final key = GlobalKey<AnimatedListState>();
  final items = List.from(Data.shoplist);

    @override
    Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title:
        Row(
          children: [
            Text(widget.title),
            SizedBox(width: 10),
            Icon( Icons.shopping_cart)
          ],
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                  child: AnimatedList(
                    key: key,
                    initialItemCount: items.length,
                    itemBuilder: (context, index, animation) =>
                        buildItem(items[index], index, animation),
                  ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: buildInsertButton(),
              ),
            ],
          ),
        ),
      ),
    );

    Widget buildItem(item, int index, Animation<double> animation) =>
        ItemWidget(
          item: item,
          animation: animation,
          onClicked: () => removeItem(index),
        );
  void removeItem(int index) {
    final item = items.removeAt(index);
    key.currentState?.removeItem(
      index,
          (context, animation) => buildItem(item, index, animation),
    );
  }
  Widget buildInsertButton() => RaisedButton(
    child: Text(
      'Insert item',
      style: TextStyle(fontSize: 20),
    ),
    color: Colors.blue,
    onPressed: () => insertItem(3, Data.shoplist.first),
  );
  void insertItem(int index, Item item) {
    items.insert(index, item);
    key.currentState!.insertItem(index);
  }

}
