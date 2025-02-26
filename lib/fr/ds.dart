import 'package:flutter/material.dart';

class DS extends StatefulWidget {
  const DS({super.key, required this.title});
  final String title;

  @override
  State<DS> createState() => _DSState();
}

class _DSState extends State<DS> {
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
              Image.asset("assets/images/fr/ds.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Née en 2014 comme une marque indépendante, mais inspirée par la légendaire Citroën DS de 1955, DS Automobiles s’est imposée comme une référence du luxe et de l’innovation à la française. Avec une gamme électrifiée et des designs distinctifs, DS continue de promouvoir un savoir-faire artisanal et technologique unique sur le marché automobile premium.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}