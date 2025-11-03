import 'package:flutter/material.dart';

class Jaguar extends StatefulWidget {
  const Jaguar({super.key, required this.title});
  final String title;

  @override
  State<Jaguar> createState() => _JaguarState();
}

class _JaguarState extends State<Jaguar> {
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
              Image.asset("assets/images/uk/jaguar.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1922 sous le nom de Swallow Sidecar Company, la marque devient Jaguar en 1945 et s’impose comme un constructeur britannique de voitures de luxe et de sport. Réputée pour son design élégant, ses performances et son raffinement, Jaguar a marqué l’histoire avec des modèles emblématiques comme la E-Type, la XJ et la F-Type. Aujourd’hui, au sein du groupe Tata Motors, Jaguar continue de produire des véhicules de prestige tout en se tournant vers l’électrification et les technologies modernes.",
                
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
