import 'package:flutter/material.dart';

class Ferrari extends StatefulWidget {
  const Ferrari({super.key, required this.title});
  final String title;

  @override
  State<Ferrari> createState() => _FerrariState();
}

class _FerrariState extends State<Ferrari> {
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
              Image.asset("assets/images/it/ferrari.png", width: 150, height: 85,),
              const SizedBox(height: 20,),
              const Text(
                "Fondée en 1947 par Enzo Ferrari, la marque est devenue un symbole mondial de luxe et de performance. De la 125 S à la SF90 Stradale, Ferrari a toujours su mêler technologie de pointe, élégance italienne et passion pour la course",
                textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
