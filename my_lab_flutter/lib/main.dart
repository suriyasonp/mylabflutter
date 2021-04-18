import 'package:flutter/material.dart';
import 'FoodMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smile Restaurant",
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
    FoodMenu("กุ้งเผา", "500", "assets/images/friedshrimp.jpg"),
    FoodMenu("ปลาเผา", "280", "assets/images/friedfish.jpg"),
    FoodMenu("ทอดมันกุ้ง", "180", "assets/images/frieddonut.jpg")
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
              leading: Image.asset(
                food.imgFood,
                width: 100,
              ),
              title: Text(
                food.name,
                style: TextStyle(fontSize: 26),
              ),
              subtitle: Text("ราคา " + food.price + " บาท"),
              onTap: () {
                print("คุณเลือกเมนูอาหาร: " + food.name);
              },
            );
          }),
    );
  }
}
