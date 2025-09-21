import 'package:flutter/material.dart';

class Mercedes extends StatefulWidget {
  const Mercedes({super.key, required this.title});
  final String title;

  @override
  State<Mercedes> createState() => _MercedesState();
}

class _MercedesState extends State<Mercedes> {
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
            Image.asset("/assets/images/de/mercedes.png", width: 150, height: 90,),
            const SizedBox(height: 20,),
            const Text(
              "Mercedes-Benz est une marque automobile allemande fondée en 1926 et appartenant au groupe Mercedes-Benz Group. Elle est synonyme de luxe, d’innovation technologique et de confort haut de gamme, tout en proposant une large gamme de véhicules allant des berlines élégantes aux modèles sportifs et prestigieux.",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
    );
  
  }
}
