import 'package:flutter/material.dart';

class France extends StatefulWidget {
  const France({super.key, required this.title});
  final String title;

  @override
  State<France> createState() => _FranceState();
}

class _FranceState extends State<France> {
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
            Image.asset("assets/images/france.png", width: 150, height: 85,),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/fr/alpine');
                },
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Alpine')), 
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/fr/bugatti');
                }, 
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Bugatti')),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/fr/citroen');
                }, 
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Citroen')),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {}, 
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('DS Automobiles')),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {}, 
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Peugeot')),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {}, 
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Renault')),
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
