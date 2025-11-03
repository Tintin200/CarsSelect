import 'package:flutter/material.dart';

class Lancia extends StatefulWidget {
  const Lancia({super.key, required this.title});
  final String title;

  @override
  State<Lancia> createState() => _LanciaState();
}

class _LanciaState extends State<Lancia> {
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
              Image.asset("assets/images/it/lancia.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1906 à Turin par Vincenzo Lancia, la marque Lancia s’est distinguée par son élégance, son innovation technique et son succès en compétition automobile, notamment en rallye. Pionnière dans de nombreuses technologies (châssis monocoque, suspensions indépendantes…), elle a marqué l’histoire avec des modèles mythiques comme la Stratos, la Delta Integrale ou l’Aurelia. Après une période de déclin, Lancia fait aujourd’hui partie du groupe Stellantis et entame une renaissance axée sur le luxe et l’électrification.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
