import 'package:flutter/material.dart';

class Bmw extends StatefulWidget {
  const Bmw({super.key, required this.title});
  final String title;

  @override
  State<Bmw> createState() => _BmwState();
}

class _BmwState extends State<Bmw> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
    ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            Image.asset("/assets/images/de/bmw.png", width: 150, height: 90,),
            const SizedBox(height: 20,),
            const Text(
              "BMW est une marque automobile allemande fondée en 1916 et membre du groupe BMW. Elle est réputée pour ses véhicules premium alliant sportivité, innovation technologique et design raffiné, avec une forte identité tournée vers le plaisir de conduire.",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
    );
  
  }
}
