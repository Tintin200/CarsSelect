import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key, required this.title});
  final String title;

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text('CarSelect'),
            ),
            ListTile(
              title: const Text('France'),
              onTap: () {
                Navigator.pushNamed(context, '/france');
              },
            ),
            ListTile(
              title: const Text('Allemagne'),
              onTap: () {
                Navigator.pushNamed(context, '/allemagne');
              },
            ),
            ListTile(
              title: const Text('Italie'),
              onTap: () {
                Navigator.pushNamed(context, '/italie');
              },
            ),
            ListTile(
              title: const Text('Angleterre'),
              onTap: () {
                Navigator.pushNamed(context, '/angleterre');
              },
            ),
            const SizedBox(height: 305),
            const Text(
              "@ 2025 CarSelect",
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/france');
              },
              child: const Text('France'),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/allemagne');
              },
              child: const Text('Allemagne'),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/italie');
              },
              child: const Text('Italie'),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/angleterre');
              },
              child: const Text('Angleterre'),
            ),
          ],
        ),
      ),
    );
  }
}
