import "package:flutter/material.dart";
import 'package:flutter/services.dart';

// fungsi untuk mentrigger proses build aplikasi flutter
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView.builder"),
          actions: [
            IconButton(
              icon: const Icon(Icons.comment),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ), //IconButton
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ), //IconButton
          ], //[]
          backgroundColor: Colors.lightGreen,
          elevation: 50.0,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ), //AppBar
        body: ListView.builder(
          itemCount: 31,
          itemBuilder: (context, position) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  position.toString(),
                  style: const TextStyle(fontSize: 22.0),
                ),
              ),
            );
          },
        ),

        //Center
      ), //Scaffold
      debugShowCheckedModeBanner:
          false, //Digunakan untuk menghapus Debug Banner
    );
  }
}
