import 'package:flutter/material.dart';
import 'package:x_launcher/screens/first_screen.dart';
import 'package:x_launcher/screens/listed_page_screen.dart';
import 'package:x_launcher/screens/notification_screen.dart';
import 'package:x_launcher/screens/second_screen.dart';
import 'package:x_launcher/screens/tools_screen.dart';

class MainPage extends StatelessWidget {
  final _pageController = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: PageView(
            controller: _pageController,
            children: [
              NotificationScreen(),
              GestureDetector(
                onTapDown: (details) {
                  print(details.globalPosition);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ToolsScreen()));
                },
                child: FirstScreen(),
              ),
              GestureDetector(
                onTapDown: (details) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ToolsScreen()));
                },
                // onHorizontalDragDown: (details) {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (_) => ListedPageScreen()));
                // },
                child: SecondScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
