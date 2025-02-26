import 'package:flutter/material.dart';

class Bugatti extends StatefulWidget {
  const Bugatti({super.key, required this.title});
  final String title;

  @override
  State<Bugatti> createState() => _BugattiState();
}

class _BugattiState extends State<Bugatti> {
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
              Image.asset("assets/images/fr/bugatti.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Bugatti, née en 1909, est une marque emblématique qui a marqué l’histoire de l’automobile par ses voitures de luxe et de sport avant-gardistes. Après des périodes de gloire, de déclin et de renaissance, elle continue aujourd’hui à incarner l’excellence et l’innovation sous l’égide de Bugatti Rimac.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}