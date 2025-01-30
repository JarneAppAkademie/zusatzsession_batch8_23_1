import 'package:flutter/material.dart';
import 'package:zusatzsession_batch8_23_1/Car.dart';
import 'package:zusatzsession_batch8_23_1/Widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  List<Car> carList = [
  Car(brand: 'BMW', model: 'X5', year: 2022),
  Car(brand: 'Audi', model: 'A6', year: 2021),
  Car(brand: 'Mercedes', model: 'C-Class', year: 2023),
  Car(brand: 'Volkswagen', model: 'Golf', year: 2020),
  Car(brand: 'Toyota', model: 'Corolla', year: 2019),
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Lernaufgaben')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Willkommen in der Zusatzsession!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Neuer Text"),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.orange, width: 3),
                ),
              ),
              Positioned(
                left: 100,
                top: 100,
                child: Text("Unter rotem Container"),
              ),
              Positioned(
                left: 200,
                top: 50,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(4, 4),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Button ohne Funktion'),
              ),
              CustomContainer(color: Colors.green),
            ],
          ),
          CustomContainer(color: Colors.amber),
          ElevatedButton(
            onPressed: () {},
            child: Text('Zum neuen Screen navigieren'),
          ),
        ],
      ),
    );
  }
}
