import 'package:flutter/material.dart';

class Abarth extends StatefulWidget {
  const Abarth({super.key, required this.title});
  final String title;

  @override
  State<Abarth> createState() => _AbarthState();
}

class _AbarthState extends State<Abarth> {
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
              Image.asset("assets/images/it/abarth.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1949 par Carlo Abarth, la marque s’est imposée dans le monde de la course avec ses voitures compactes et performantes. Intégrée à Fiat en 1971, puis relancée en 2007, Abarth perpétue aujourd’hui la tradition du sport automobile italien, en entrant désormais dans une nouvelle ère électrique, sans renier son caractère explosif et passionné.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
