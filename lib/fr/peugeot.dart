import 'package:flutter/material.dart';

class Peugeot extends StatefulWidget {
  const Peugeot({super.key, required this.title});
  final String title;

  @override
  State<Peugeot> createState() => _PeugeotState();
}

class _PeugeotState extends State<Peugeot> {
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
              Image.asset("assets/images/fr/peugeot.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "De ses débuts en tant que fabricant d’outils et de moulins, Peugeot a évolué pour devenir une icône de l’automobile mondiale, alliant tradition, innovation et performance. Aujourd’hui, elle continue d’écrire son histoire en relevant les défis de l’électrification et de la mondialisation.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}