import 'package:flutter/material.dart';
import 'package:project_universitas/pages/bottom_navigation/botoom_navigation_bar.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Project Universitas",
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        debugShowCheckedModeBanner: false,
        home: MainMenu(),
      // bottom: BottomNavigationBar(),
    );
  }
}


