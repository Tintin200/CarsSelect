import 'package:flutter/material.dart';

class Mini extends StatefulWidget {
  const Mini({super.key, required this.title});
  final String title;

  @override
  State<Mini> createState() => _MiniState();
}

class _MiniState extends State<Mini> {
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
              Image.asset("assets/images/uk/mini.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Créée en 1959 au Royaume-Uni par le British Motor Corporation (BMC), la Mini est devenue une icône de l’automobile grâce à son design compact, sa maniabilité exceptionnelle et son caractère ludique. Initialement conçue pour être une voiture économique et pratique, la Mini a aussi connu un immense succès en compétition automobile, notamment en rallye. Aujourd’hui, sous la marque BMW, la Mini combine style rétro et technologies modernes, tout en conservant son esprit urbain et dynamique.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
