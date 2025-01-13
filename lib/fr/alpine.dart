import 'package:flutter/material.dart';

class Alpine extends StatefulWidget {
  const Alpine({super.key, required this.title});
  final String title;

  @override
  State<Alpine> createState() => _AlpineState();
}

class _AlpineState extends State<Alpine> {
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
              Image.asset("assets/images/fr/alpine.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Alpine est une marque française emblématique qui a marqué l’histoire du sport automobile par ses voitures légères et innovantes. Après un déclin, elle renaît avec succès sous l'égide de Renault, avec une vision tournée vers l’avenir électrique et la compétition.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
