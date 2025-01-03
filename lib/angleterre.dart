import 'package:flutter/material.dart';

class Angleterre extends StatefulWidget {
  const Angleterre({super.key, required this.title});
  final String title;

  @override
  State<Angleterre> createState() => _AngleterreState();
}

class _AngleterreState extends State<Angleterre> {
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
            Image.asset("assets/images/uk.png",width: 150, height: 85,),
            const SizedBox(height: 20,),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Aston Martin')), 
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: const SizedBox(
                  width: 350,
                  height: 50,
                  child: Center(child: Text('Bentley')), 
                ),
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}