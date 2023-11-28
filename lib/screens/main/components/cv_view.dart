import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class PDF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: bgColor,
        body: Center(
          child: Image.asset(
            'assets/PIC_RESUME.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
