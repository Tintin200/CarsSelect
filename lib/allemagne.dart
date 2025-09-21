import 'package:flutter/material.dart';

class Allemagne extends StatefulWidget {
  const Allemagne({super.key, required this.title});
  final String title;

  @override
  State<Allemagne> createState() => _AllemagneState();
}

class _AllemagneState extends State<Allemagne> {
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
            Image.asset("assets/images/allemagne.png", width: 150, height: 85,),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/de/audi');
                },
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Audi')), 
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/de/bmw');                },
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('BMW')), 
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/de/mercedes');
                },
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Mercedes-Benz')), 
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/de/opel');
                },
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Opel')), 
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/de/porsche');
                },
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Porsche')), 
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/de/smart');
                },
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Smart')), 
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/de/volkswagen');
                },
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Volkswagen')), 
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}