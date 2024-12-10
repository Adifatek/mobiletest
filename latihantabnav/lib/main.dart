import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: AppBar(
                bottom: const TabBar(tabs: [
                  Tab(text: 'Music', icon: Icon(Icons.music_note)),
                  Tab(text: 'Video', icon: Icon(Icons.music_video)),
                  Tab(text: 'Camera', icon: Icon(Icons.camera_alt)),
                  Tab(text: 'Grade', icon: Icon(Icons.grade)),
                  Tab(text: 'Email', icon: Icon(Icons.email)),
                ]),
                title: Text('FTI Tutorial'),
                backgroundColor: Colors.blue,
              ),
              body: const TabBarView(children: [
                Icon(
                  Icons.music_note,
                  size: 150,
                  color: Colors.lightGreen,
                )s,
                Icon(Icons.music_video, size: 150, color: Colors.lightBlue),
                Icon(
                  Icons.camera_alt,
                  size: 150,
                  color: Colors.red,
                ),
                Icon(Icons.grade, size: 150),
                Icon(Icons.email, size: 150),
              ]),
            )));
  }
}
