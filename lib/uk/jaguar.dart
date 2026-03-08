import 'package:flutter/material.dart';

class Jaguar extends StatefulWidget {
  const Jaguar({super.key, required this.title});
  final String title;

  @override
  State<Jaguar> createState() => _JaguarState();
}

class _JaguarState extends State<Jaguar> {
  static const Color _background = Color(0xFFFAFAF8);
  static const Color _black      = Color(0xFF1A1714);
  static const Color _gold       = Color(0xFFC8A96E);
  static const Color _grey       = Color(0xFFA09A92);
  static const Color _divider    = Color(0xFFE8E5DF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      appBar: AppBar(
        backgroundColor: _background,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: _black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'JAGUAR',
          style: TextStyle(
            fontSize: 12,
            letterSpacing: 5,
            fontWeight: FontWeight.w300,
            color: _black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(height: 1, color: _divider),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 48, bottom: 32),
                    child: Image.asset(
                      'assets/images/uk/jaguar.png',
                      width: 140,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(width: 30, height: 1, color: _gold),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _MetaChip(label: 'Angleterre', greyColor: _grey),
                      _MetaDot(color: _divider),
                      _MetaChip(label: '1922', greyColor: _grey),
                      _MetaDot(color: _divider),
                      _MetaChip(label: 'Premium', greyColor: _grey),
                    ],
                  ),
                  const SizedBox(height: 48),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(child: Container(height: 1, color: _divider)),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            'À PROPOS',
                            style: TextStyle(
                              fontSize: 9,
                              letterSpacing: 3,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFFA09A92),
                            ),
                          ),
                        ),
                        Expanded(child: Container(height: 1, color: _divider)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "Jaguar est une marque britannique légendaire fondée en 1922, célèbre pour ses berlines et coupés au design gracieux et élancé. Avec des modèles emblématiques comme la Type E et la F-Type, elle incarne l'élégance britannique sportive. Aujourd'hui membre du groupe Tata Motors, Jaguar opère une transformation radicale vers l'électrique.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.9,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.3,
                        color: const Color(0xFF1A1714).withOpacity(0.75),
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        const _StatBox(value: '1922',    label: 'FONDATION', gold: _gold, grey: _grey, divider: _divider),
                        Container(width: 1, height: 60, color: _divider),
                        const _StatBox(value: 'UK',    label: 'PAYS',      gold: _gold, grey: _grey, divider: _divider),
                        Container(width: 1, height: 60, color: _divider),
                        const _StatBox(value: 'Premium', label: 'SEGMENT',   gold: _gold, grey: _grey, divider: _divider),
                      ],
                    ),
                  ),
                  Container(margin: const EdgeInsets.symmetric(horizontal: 24), height: 1, color: _divider),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MetaChip extends StatelessWidget {
  final String label;
  final Color greyColor;
  const _MetaChip({required this.label, required this.greyColor});
  @override
  Widget build(BuildContext context) {
    return Text(label, style: TextStyle(fontSize: 10, letterSpacing: 2.5, fontWeight: FontWeight.w300, color: greyColor));
  }
}

class _MetaDot extends StatelessWidget {
  final Color color;
  const _MetaDot({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(horizontal: 10), width: 3, height: 3, decoration: BoxDecoration(shape: BoxShape.circle, color: color));
  }
}

class _StatBox extends StatelessWidget {
  final String value;
  final String label;
  final Color gold;
  final Color grey;
  final Color divider;
  const _StatBox({required this.value, required this.label, required this.gold, required this.grey, required this.divider});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(border: Border(top: BorderSide(color: divider))),
        child: Column(
          children: [
            Text(value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, letterSpacing: 1, color: gold)),
            const SizedBox(height: 6),
            Text(label, style: TextStyle(fontSize: 9, letterSpacing: 2.5, fontWeight: FontWeight.w300, color: grey)),
          ],
        ),
      ),
    );
  }
}