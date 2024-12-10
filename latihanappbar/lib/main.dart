import 'package:flutter/material.dart';

// fungsi untuk mentrigger proses build aplikasi flutter
void main() {
  runApp(const TabBarDemo());
}

// class yang digunakan untuk build aplikasi
class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Untuk menghilangkan banner debug
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Profile", icon: Icon(Icons.people_alt)),
                Tab(text: "Music", icon: Icon(Icons.music_video)),
                Tab(text: "Camera", icon: Icon(Icons.camera_alt)),
                Tab(text: "Grade", icon: Icon(Icons.grade)),
                Tab(text: "Email", icon: Icon(Icons.email)),
              ],
            ),
            title: const Text('FTI Tutorial'),
            backgroundColor: Colors.blue,
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.people_outline, size: 150),
              Icon(Icons.music_video, size: 150),
              Icon(Icons.camera_alt, size: 150),
              Icon(Icons.grade, size: 150),
              Icon(Icons.email, size: 150),
            ],
          ),
        ),
      ),
    );
  }
}
