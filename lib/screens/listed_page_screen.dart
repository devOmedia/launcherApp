import 'package:flutter/material.dart';

class ListedPageScreen extends StatelessWidget {
  const ListedPageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text('this is list of apps'),
      ),
    );
  }
}