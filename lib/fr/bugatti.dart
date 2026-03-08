import 'package:flutter/material.dart';

class Bugatti extends StatefulWidget {
  const Bugatti({super.key, required this.title});
  final String title;

  @override
  State<Bugatti> createState() => _BugattiState();
}

class _BugattiState extends State<Bugatti> {
  // ── Palette ──────────────────────────────────────────────────────────────
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
          'BUGATTI',
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

                  // ── Logo ──
                  Padding(
                    padding: const EdgeInsets.only(top: 48, bottom: 32),
                    child: Image.asset(
                      'assets/images/fr/bugatti.png',
                      width: 140,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ),

                  // ── Trait doré ──
                  Container(width: 30, height: 1, color: _gold),

                  const SizedBox(height: 20),

                  // ── Métadonnées : pays · année ──
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _MetaChip(label: 'France', greyColor: _grey),
                      _MetaDot(color: _divider),
                      _MetaChip(label: '1909', greyColor: _grey),
                      _MetaDot(color: _divider),
                      _MetaChip(label: 'Luxe', greyColor: _grey),
                    ],
                  ),

                  const SizedBox(height: 48),

                  // ── Divider section ──
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
                              color: _grey,
                            ),
                          ),
                        ),
                        Expanded(child: Container(height: 1, color: _divider)),
                      ],
                    ),
                  ),

                  const SizedBox(height: 28),

                  // ── Description ──
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "Bugatti, née en 1909, est une marque emblématique qui a marqué l’histoire de l’automobile par ses voitures de luxe et de sport avant-gardistes. Après des périodes de gloire, de déclin et de renaissance, elle continue aujourd’hui à incarner l’excellence et l’innovation sous l’égide de Bugatti Rimac.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.9,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.3,
                        color: _black.withOpacity(0.75),
                      ),
                    ),
                  ),

                  const SizedBox(height: 48),

                  // ── Stats ──
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        const _StatBox(
                          value: '1909',
                          label: 'FONDATION',
                          gold: _gold,
                          grey: _grey,
                          divider: _divider,
                        ),
                        Container(width: 1, height: 60, color: _divider),
                        const _StatBox(
                          value: 'FR',
                          label: 'PAYS',
                          gold: _gold,
                          grey: _grey,
                          divider: _divider,
                        ),
                        Container(width: 1, height: 60, color: _divider),
                        const _StatBox(
                          value: 'Luxe',
                          label: 'SEGMENT',
                          gold: _gold,
                          grey: _grey,
                          divider: _divider,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    height: 1,
                    color: _divider,
                  ),

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

// ── Widget : puce métadonnée ──────────────────────────────────────────────
class _MetaChip extends StatelessWidget {
  final String label;
  final Color greyColor;
  const _MetaChip({required this.label, required this.greyColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 10,
        letterSpacing: 2.5,
        fontWeight: FontWeight.w300,
        color: greyColor,
      ),
    );
  }
}

// ── Widget : séparateur point ─────────────────────────────────────────────
class _MetaDot extends StatelessWidget {
  final Color color;
  const _MetaDot({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 3,
      height: 3,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}

// ── Widget : boîte stat ───────────────────────────────────────────────────
class _StatBox extends StatelessWidget {
  final String value;
  final String label;
  final Color gold;
  final Color grey;
  final Color divider;
  const _StatBox({
    required this.value,
    required this.label,
    required this.gold,
    required this.grey,
    required this.divider,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: divider)),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                letterSpacing: 1,
                color: gold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 9,
                letterSpacing: 2.5,
                fontWeight: FontWeight.w300,
                color: grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}