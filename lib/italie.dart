import 'package:flutter/material.dart';

class Italie extends StatefulWidget {
  const Italie({super.key, required this.title});
  final String title;

  @override
  State<Italie> createState() => _ItalieState();
}

class _ItalieState extends State<Italie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/italie.png", width: 150, height: 85,),
            const SizedBox(height: 20),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Abarth')), 
                ),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Alfa Romeo')), 
                ),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Ferrari')), 
                ),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Fiat')), 
                ),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Lamborghini')), 
                ),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Lancia')), 
                ),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Maserati')), 
                ),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Pagani')), 
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}