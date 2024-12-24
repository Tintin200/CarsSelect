import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/myhomepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashHomePage(title: 'CarSelect'),
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


