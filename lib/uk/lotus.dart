import 'package:flutter/material.dart';

class Lotus extends StatefulWidget {
  const Lotus({super.key, required this.title});
  final String title;

  @override
  State<Lotus> createState() => _LotusState();
}

class _LotusState extends State<Lotus> {
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
              Image.asset("assets/images/uk/lotus.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1952 au Royaume-Uni par Colin Chapman, Lotus Cars est une marque célèbre pour ses voitures de sport légères, agiles et innovantes. Lotus s’est distinguée par son approche axée sur la performance grâce à la légèreté plutôt qu’à la puissance brute, et par ses succès en Formule 1 et en compétition automobile. Aujourd’hui, la marque continue de produire des modèles emblématiques comme l’Elise, l’Exige et l’Emira, tout en préparant une transition vers l’électrification avec un accent sur la technologie et la conduite dynamique.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
