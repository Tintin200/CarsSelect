import 'package:flutter/material.dart';

class Citroen extends StatefulWidget {
  const Citroen({super.key, required this.title});
  final String title;

  @override
  State<Citroen> createState() => _CitroenState();
}

class _CitroenState extends State<Citroen> {
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
              Image.asset("assets/images/fr/citroen.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Depuis sa fondation en 1919, Citroën s’est imposée comme une marque pionnière de l’automobile grâce à ses innovations, son design audacieux et son accessibilité. Malgré des périodes de crise, elle continue aujourd’hui à incarner l’esprit avant-gardiste et démocratique qui a marqué son histoire.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}