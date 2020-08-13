import 'package:flutter/material.dart';
import 'package:sdm_fatores_climatologicos/screens/cidades_list.dart';
import 'package:sdm_fatores_climatologicos/screens/login.dart';

void main() {
  runApp(AppFatoresClimatologicos());
}

class AppFatoresClimatologicos extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fatores Climatológicos',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(
        title: "Fatores Climatológicos",
      ),
    );
  }
}
