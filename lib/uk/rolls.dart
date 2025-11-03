import 'package:flutter/material.dart';

class Rolls extends StatefulWidget {
  const Rolls({super.key, required this.title});
  final String title;

  @override
  State<Rolls> createState() => _RollsState();
}

class _RollsState extends State<Rolls> {
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
              Image.asset("assets/images/uk/rolls.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1904 au Royaume-Uni par Charles Rolls et Henry Royce, Rolls-Royce est synonyme de luxe, de raffinement et d’excellence artisanale. La marque s’est imposée comme le symbole ultime de la voiture de prestige, avec des modèles emblématiques comme la Phantom, la Silver Ghost et la Ghost. Aujourd’hui, Rolls-Royce fait partie du groupe BMW, combinant savoir-faire traditionnel et technologies modernes, tout en conservant son image de luxe intemporel et exclusif.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
