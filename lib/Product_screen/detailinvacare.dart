import 'package:flutter/material.dart';


class Invacare extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text('Détailles'),

      ),
      body:
      Container(
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
          child: ListView(
            children: [
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/images/inva1.jpg'),
                    SizedBox(width: 10),
                    Image.asset('assets/images/inva2.jpg'),
                    SizedBox(width: 10),
                    Image.asset('assets/images/inva3.jpg'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Concentrateur d'oxygène Invacare",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Informations : ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
             TextField(
               decoration: InputDecoration(
                 labelText: 'Prix '
               ),
               controller: TextEditingController(text: '2900 Dt'),
             ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Volume '
                ),
                controller: TextEditingController(text: '9 L'),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Concentration d'oxygène: "
                ),
                controller: TextEditingController(text: '95%'),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Débit d'oxygène : "
                ),
                controller: TextEditingController(text: 'Entre 5L/min et 9L/min'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

