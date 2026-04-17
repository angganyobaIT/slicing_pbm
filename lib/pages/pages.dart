import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String username;
  const MyWidget({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('welcome, $username !')
          ],
        ),
      ),
    );

  }
}