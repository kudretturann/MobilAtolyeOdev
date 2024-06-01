import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi-Kod',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Color.fromARGB(255, 189, 245, 242)), 
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text('Hi-Kod',
        style: TextStyle(fontWeight: FontWeight.bold,
        color: Colors.white
        ),
        ),
       
         
        actions: [
          IconButton(
            icon: Icon(Icons.person,color: Color.fromARGB(255, 189, 245, 242)),
            onPressed: () {
              print('İnsan ikonuna tıklandı!');
            },
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 189, 245, 242),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            ),
            onPressed: () {},
            child: Text(
              'Hello World',
              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 189, 245, 242),fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
