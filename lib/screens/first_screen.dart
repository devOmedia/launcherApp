import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green,
        child: Center(
          child: Text('this is first screen', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
