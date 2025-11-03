import 'package:flutter/material.dart';

class Alfa extends StatefulWidget {
  const Alfa({super.key, required this.title});
  final String title;

  @override
  State<Alfa> createState() => _AlfaState();
}

class _AlfaState extends State<Alfa> {
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
              Image.asset("assets/images/it/alfa.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1910, Alfa Romeo s’est imposée comme une légende de l’automobile italienne, alliant beauté, innovation et performance. Après un siècle marqué par les succès en compétition et les périodes de crise, la marque connaît aujourd’hui une renaissance sous Stellantis, tournée vers l’électrification mais fidèle à son héritage sportif et passionné.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
