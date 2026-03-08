import 'package:flutter/material.dart';

class Citroen extends StatefulWidget {
  const Citroen({super.key, required this.title});
  final String title;

  @override
  State<Citroen> createState() => _CitroenState();
}

class _CitroenState extends State<Citroen> {
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
          'CITROEN',
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
                      'assets/images/fr/citroen.png',
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
                      _MetaChip(label: '1919', greyColor: _grey),
                      _MetaDot(color: _divider),
                      _MetaChip(label: 'Technologie', greyColor: _grey),
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
                      "Depuis sa fondation en 1919, Citroën s’est imposée comme une marque pionnière de l’automobile grâce à ses innovations, son design audacieux et son accessibilité. Malgré des périodes de crise, elle continue aujourd’hui à incarner l’esprit avant-gardiste et démocratique qui a marqué son histoire.",
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
                          value: '1919',
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
                          value: 'Technologie',
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