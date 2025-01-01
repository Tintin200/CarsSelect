import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/france.dart';
import 'package:myapp/italie.dart';
import 'package:myapp/allemagne.dart';
import 'package:myapp/angleterre.dart';
import 'package:myapp/accueil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarSelect',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashHomePage(title: 'CarSelect'),
      routes :{
      '/france': (BuildContext context) => const France(title: "France"),
      '/allemagne' : (BuildContext context) => const Allemagne(title: "Allemagne"),
      '/italie': (BuildContext context) => const Italie(title: "Italie"),
      '/angleterre': (BuildContext context) => const Angleterre(title: "Angleterre"),
      }
    );
  }
}

class SplashHomePage extends StatefulWidget {
  const SplashHomePage({super.key, required this.title});

  final String title;

  @override
  State<SplashHomePage> createState() => _SplashHomePageState();
}

class _SplashHomePageState extends State<SplashHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds : 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage(title: "CarSelect"),)
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Image.asset("assets/images/cars.png",),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}


