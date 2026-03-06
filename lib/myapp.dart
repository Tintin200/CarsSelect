import 'package:flutter/material.dart';
import 'package:myapp/splash_screen.dart';

// Pays
import 'package:myapp/france.dart';
import 'package:myapp/italie.dart';
import 'package:myapp/allemagne.dart';
import 'package:myapp/angleterre.dart';
// France
import 'package:myapp/fr/alpine.dart';
import 'package:myapp/fr/bugatti.dart';
import 'package:myapp/fr/citroen.dart';
import 'package:myapp/fr/ds.dart';
import 'package:myapp/fr/peugeot.dart';
import 'package:myapp/fr/renault.dart';
// Allemagne
import 'package:myapp/de/audi.dart';
import 'package:myapp/de/bmw.dart';
import 'package:myapp/de/mercedes.dart';
import 'package:myapp/de/opel.dart';
import 'package:myapp/de/porsche.dart';
import 'package:myapp/de/smart.dart';
import 'package:myapp/de/volkswagen.dart';
//Italie
import 'package:myapp/it/abarth.dart';
import 'package:myapp/it/alfa.dart';
import 'package:myapp/it/ferrari.dart';
import 'package:myapp/it/fiat.dart';
import 'package:myapp/it/lamborghini.dart';
import 'package:myapp/it/lancia.dart';
import 'package:myapp/it/maserati.dart';
import 'package:myapp/it/pagani.dart';
//Grande-Bretagne
import 'package:myapp/uk/aston.dart';
import 'package:myapp/uk/bentley.dart';
import 'package:myapp/uk/jaguar.dart';
import 'package:myapp/uk/land.dart';
import 'package:myapp/uk/lotus.dart';
import 'package:myapp/uk/mclaren.dart';
import 'package:myapp/uk/mini.dart';
import 'package:myapp/uk/rolls.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CarSelect',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        routes: {
          // Pays
          '/france': (BuildContext context) => const France(title: "France"),
          '/allemagne': (BuildContext context) => const Allemagne(title: "Allemagne"),
          '/italie': (BuildContext context) => const Italie(title: "Italie"),
          '/angleterre': (BuildContext context) => const Angleterre(title: "Angleterre"),
          // France
          '/fr/alpine': (BuildContext context) => const Alpine(title: "Alpine"),
          '/fr/bugatti': (BuildContext context) => const Bugatti(title: "Bugatti"),
          '/fr/citroen': (BuildContext context) => const Citroen(title: "Citroen"),
          '/fr/ds': (BuildContext context) => const DS(title: "DS"),
          '/fr/peugeot': (BuildContext context) => const Peugeot(title: "Peugeot"),
          '/fr/renault': (BuildContext context) => const Renault(title: "Renault"),
          // Allemagne
          '/de/audi': (BuildContext context) => const Audi(title: "Audi"),
          '/de/bmw': (BuildContext context) => const Bmw(title: "Bmw"),
          '/de/mercedes': (BuildContext context) => const Mercedes(title: "Mercedes"),
          '/de/opel': (BuildContext context) => const Opel(title: "Opel"),
          '/de/porsche': (BuildContext context) => const Porsche(title: "Porsche"),
          '/de/smart': (BuildContext context) => const Smart(title: "Smart"),
          '/de/volkswagen': (BuildContext context) => const Volkswagen(title: "Volkswagen"),
          //Italie
          '/it/abarth': (BuildContext context) => const Abarth(title: "Abarth"),
          '/it/alfa': (BuildContext context) => const Alfa(title: "Alfa"),
          '/it/ferrari': (BuildContext context) => const Ferrari(title: "Ferrari"),
          '/it/fiat': (BuildContext context) => const Fiat(title: "Fiat"),
          '/it/lamborghini': (BuildContext context) => const Lamborghini(title: "Lamborghini"),
          '/it/lancia': (BuildContext context) => const Lancia(title: "Lancia"),
          '/it/maserati': (BuildContext context) => const Maserati(title: "Maserati"),
          '/it/pagani': (BuildContext context) => const Pagani(title: "Pagani"),
          //Grande-Bretagne
          '/uk/aston': (BuildContext context) => const Aston(title: "Aston"),
          '/uk/bentley': (BuildContext context) => const Bentley(title: "Bentley"),
          '/uk/jaguar': (BuildContext context) => const Jaguar(title: "Jaguar"),
          '/uk/land': (BuildContext context) => const Land(title: "Land"),
          '/uk/lotus': (BuildContext context) => const Lotus(title: "Lotus"),
          '/uk/mclaren': (BuildContext context) => const McLaren(title: "McLaren"),
          '/uk/mini': (BuildContext context) => const Mini(title: "Mini"),
          '/uk/rolls': (BuildContext context) => const Rolls(title: "Rolls"),
        });
  }
}