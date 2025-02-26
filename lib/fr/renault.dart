import 'package:flutter/material.dart';

class Renault extends StatefulWidget {
  const Renault({super.key, required this.title});
  final String title;

  @override
  State<Renault> createState() => _RenaultState();
}

class _RenaultState extends State<Renault> {
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
              Image.asset("assets/images/fr/renault.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1898, Renault a traversé les époques en démocratisant l’automobile et en proposant des modèles iconiques. Aujourd’hui, elle incarne un équilibre entre tradition et modernité, avec un fort engagement pour la mobilité électrique et durable.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}