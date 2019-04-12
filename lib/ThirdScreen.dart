import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third screen'),
      ),
      body: Center(
        child: Text('You have pressed the button.',
            style: TextStyle(color: Colors.white, fontSize: 30.0)),
      ),
      backgroundColor: Color.fromRGBO(200, 200, 200, 0.2),
    );
  }
}