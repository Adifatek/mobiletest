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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('FTI UNISKA TUTORIAL'),
        ),
        body: const Center(
          child: Text(
            "Selamat Datang Di FTI UNISKA BANJARMASIN",
            style: TextStyle(color: Colors.black, fontSize: 40.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0, child: const Icon(Icons.add), onPressed: () {}),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'FTI Tutorial',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  )),
              ListTile(
                title: Text('Dashboard'),
                leading: Icon(Icons.account_balance),
              ),
              ListTile(
                title: Text('Sosial'),
                leading: Icon(Icons.people),
              ),
              ListTile(
                title: Text('INbox'),
                leading: Icon(Icons.mail),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
