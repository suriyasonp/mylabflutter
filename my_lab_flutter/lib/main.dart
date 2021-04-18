import 'package:flutter/material.dart';
import 'FoodMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Factory",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500"),
    FoodMenu("ปลาเผา", "280"),
    FoodMenu("ทอดมันกุ้ง", "180")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "เลือกรายการอาหาร",
            style: TextStyle(color: Colors.grey.shade800, fontSize: 26),
          ),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                title: Text(
                  food.name,
                  style: TextStyle(fontSize: 26),
                ),
                subtitle: Text("ราคา " + food.price + " บาท"),
              );
            }));
  }
}
