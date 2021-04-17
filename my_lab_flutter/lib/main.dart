import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Factory",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Factory",
            style: TextStyle(color: Colors.grey.shade800),
          ),
        ),
        body: Center(
          // child: Image(
          //   image: NetworkImage(
          //       "https://image.freepik.com/free-vector/group-analysts-working-graphs_1262-21249.jpg"),
          // ),
          // child: Text(
          //   "Data is being updated. Please wait.",
          //   style: TextStyle(color: Colors.grey, fontSize: 30),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Data is being updated.",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 30),
              ),
              Text(
                "Please be patient.",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 30),
              ),
              Image(
                image: AssetImage('assets/images/data.jpg'),
                width: 200,
              )
            ],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}
