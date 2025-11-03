import 'package:flutter/material.dart';

class McLaren extends StatefulWidget {
  const McLaren({super.key, required this.title});
  final String title;

  @override
  State<McLaren> createState() => _McLarenState();
}

class _McLarenState extends State<McLaren> {
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
              Image.asset("assets/images/uk/mclaren.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1963 au Royaume-Uni par Bruce McLaren, McLaren Automotive est une marque emblématique de supercars et hypercars de haute performance. Elle s’appuie sur l’expertise de McLaren Racing en Formule 1 pour développer des voitures alliant technologie de pointe, aérodynamique et performances exceptionnelles. Des modèles célèbres comme la F1, la P1, la 720S ou la Artura symbolisent l’innovation et l’exclusivité de la marque, qui se dirige progressivement vers une électrification hybride et électrique.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
