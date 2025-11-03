import 'package:flutter/material.dart';

class Bentley extends StatefulWidget {
  const Bentley({super.key, required this.title});
  final String title;

  @override
  State<Bentley> createState() => _BentleyState();
}

class _BentleyState extends State<Bentley> {
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
              Image.asset("assets/images/uk/bentley.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1919 à Londres par Walter Owen Bentley, Bentley Motors est une marque britannique emblématique de luxe, de performance et de savoir-faire artisanal. Célèbre pour ses victoires aux 24 Heures du Mans dans les années 1920, la marque s’est imposée comme le symbole des voitures de grand tourisme puissantes et raffinées. Après avoir connu plusieurs périodes de difficultés, elle fait aujourd’hui partie du groupe Volkswagen, alliant tradition et technologie moderne. Bentley se tourne désormais vers un avenir électrifié, tout en conservant son excellence artisanale et son élégance britannique.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
