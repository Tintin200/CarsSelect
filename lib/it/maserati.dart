import 'package:flutter/material.dart';

class Maserati extends StatefulWidget {
  const Maserati({super.key, required this.title});
  final String title;

  @override
  State<Maserati> createState() => _MaseratiState();
}

class _MaseratiState extends State<Maserati> {
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
              Image.asset("assets/images/it/maserati.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1914 à Bologne par les frères Maserati, la marque Maserati incarne depuis plus d’un siècle le luxe, la performance et le raffinement à l’italienne. Elle s’est d’abord illustrée en compétition automobile, avant de devenir un constructeur de voitures de grand tourisme prestigieuses. Connue pour ses moteurs puissants, son design élégant et son emblématique trident, Maserati a traversé plusieurs périodes de crise et de renaissance. Aujourd’hui, au sein du groupe Stellantis, elle poursuit sa transformation vers une gamme entièrement électrifiée tout en conservant son âme sportive et artisanale.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
