import 'package:flutter/material.dart';

class Lamborghini extends StatefulWidget {
  const Lamborghini({super.key, required this.title});
  final String title;

  @override
  State<Lamborghini> createState() => _LamborghiniState();
}

class _LamborghiniState extends State<Lamborghini> {
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
              Image.asset("assets/images/it/lamborghini.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1963 par Ferruccio Lamborghini, la marque Lamborghini est née d’un défi lancé à Ferrari. Spécialisée dans les voitures de sport de luxe et de prestige, elle s’est imposée par son design audacieux, ses moteurs puissants et son caractère extrême. Après des hauts et des bas, elle appartient aujourd’hui au groupe Volkswagen (Audi) et incarne l’excellence italienne mêlant performance, innovation et émotion.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
