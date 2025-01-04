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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              Image.asset(
                "assets/images/uk.png",
                width: 150,
                height: 85,
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
              Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {},
                  child: const SizedBox(
                    width: 350,
                    height: 50,
                    child: Center(child: Text('Jaguar')),
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
                    child: Center(child: Text('Land Rover')),
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
                    child: Center(child: Text('Lotus')),
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
                    child: Center(child: Text('McLaren')),
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
                    child: Center(child: Text('Mini')),
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
                    child: Center(child: Text('Rolls-Royce')),
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
