import 'package:flutter/material.dart';

class Fiat extends StatefulWidget {
  const Fiat({super.key, required this.title});
  final String title;

  @override
  State<Fiat> createState() => _FiatState();
}

class _FiatState extends State<Fiat> {
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
              Image.asset("assets/images/it/fiat.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1899 à Turin, Fiat a su passer du statut de pionnier artisanal à celui de géant mondial de l’automobile. Marque du peuple, elle a motorisé l’Italie, traversé les guerres, les crises et les révolutions technologiques.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
