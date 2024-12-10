import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FTI Tutorial'),
          backgroundColor: Colors.blue,
        ),
        body: const SafeArea(
          child: Center(
            child: Text(
              'Welcome to UNISKA Tutorial!',
              style: TextStyle(
                  fontFamily: 'Audiowide',
                  fontSize: 40.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
