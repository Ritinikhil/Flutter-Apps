import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "This is Stateful Widget",
      home: City(),
    ),
  );
}

class City extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CityState();
  }
}

class CityState extends State<City> {
  String nameCity = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget Example"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
              decoration: InputDecoration(labelText: 'Enter a city'),
            ),
            Text("Entered city: $nameCity"),
          ],
        ),
      ),
    );
  }
}
