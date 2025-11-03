import 'package:flutter/material.dart';

class Pagani extends StatefulWidget {
  const Pagani({super.key, required this.title});
  final String title;

  @override
  State<Pagani> createState() => _PaganiState();
}

class _PaganiState extends State<Pagani> {
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
              Image.asset("assets/images/it/pagani.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1992 par Horacio Pagani, la marque Pagani Automobili est un constructeur italien de supercars artisanales et exclusives. Alliant ingénierie de pointe, design artistique et matériaux d’exception (comme la fibre de carbone), Pagani se distingue par des modèles emblématiques tels que la Zonda, la Huayra et la Utopia. Produites en très petites séries, ses voitures sont de véritables œuvres d’art mécaniques, symbolisant le mariage parfait entre technologie et émotion.",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
