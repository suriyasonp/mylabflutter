import 'package:flutter/material.dart';

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
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Factory",
          style: TextStyle(color: Colors.grey.shade800),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Data is being updated.",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 30),
            ),
            Text(
              "Please wait.",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 30),
            ),
            Image(
              image: AssetImage('assets/images/data.jpg'),
              width: 200,
            ),
            Text(''),
            Text("Press a button to increase a number.",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 18)),
            Text(number.toString(),
                style: TextStyle(color: Colors.grey.shade600, fontSize: 35))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (number >= 10) {
              number = 0;
            } else {
              number++;
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
