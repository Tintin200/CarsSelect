import 'package:flutter/material.dart';

class France extends StatefulWidget {
  const France({super.key, required this.title});
  final String title;

  @override
  State<France> createState() => _FranceState();
}

class _FranceState extends State<France> {
  // ── Palette ──────────────────────────────────────────────────────────────
  static const Color _background = Color(0xFFFAFAF8);
  static const Color _black      = Color(0xFF1A1714);
  static const Color _gold       = Color(0xFFC8A96E);
  static const Color _grey       = Color(0xFFA09A92);
  static const Color _divider    = Color(0xFFE8E5DF);

  // ── Données marques ───────────────────────────────────────────────────────
  final List<Map<String, String>> _brands = const [
    {'name': 'Alpine',         'route': '/fr/alpine',  'year': '1955'},
    {'name': 'Bugatti',        'route': '/fr/bugatti', 'year': '1909'},
    {'name': 'Citroën',        'route': '/fr/citroen', 'year': '1919'},
    {'name': 'DS Automobiles', 'route': '/fr/ds',      'year': '2014'},
    {'name': 'Peugeot',        'route': '/fr/peugeot', 'year': '1810'},
    {'name': 'Renault',        'route': '/fr/renault', 'year': '1899'},
  ];

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
          'FRANCE',
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
          // ── Divider sous l'AppBar ──
          Container(height: 1, color: _divider),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // ── Header pays ──
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36),
                    child: Column(
                      children: [
                        // Drapeau
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            'assets/images/france.png',
                            width: 100,
                            height: 58,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Trait doré
                        Container(width: 30, height: 1, color: _gold),
                        const SizedBox(height: 16),
                        // Sous-titre
                        Text(
                          '${_brands.length} MARQUES',
                          style: const TextStyle(
                            fontSize: 10,
                            letterSpacing: 4,
                            fontWeight: FontWeight.w300,
                            color: _grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // ── Liste des marques ──
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: _divider),
                      ),
                    ),
                    child: Column(
                      children: _brands.map((brand) {
                        return _BrandRow(
                          name: brand['name']!,
                          year: brand['year']!,
                          route: brand['route']!,
                          dividerColor: _divider,
                          goldColor: _gold,
                          blackColor: _black,
                          greyColor: _grey,
                        );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Widget : ligne de marque ──────────────────────────────────────────────
class _BrandRow extends StatefulWidget {
  final String name;
  final String year;
  final String route;
  final Color dividerColor;
  final Color goldColor;
  final Color blackColor;
  final Color greyColor;

  const _BrandRow({
    required this.name,
    required this.year,
    required this.route,
    required this.dividerColor,
    required this.goldColor,
    required this.blackColor,
    required this.greyColor,
  });

  @override
  State<_BrandRow> createState() => _BrandRowState();
}

class _BrandRowState extends State<_BrandRow> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) {
        setState(() => _pressed = false);
        Navigator.pushNamed(context, widget.route);
      },
      onTapCancel: () => setState(() => _pressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: _pressed ? const Color(0xFFF2F0EC) : Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 4),
        child: Row(
          children: [
            // Initiale
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: widget.dividerColor),
              ),
              alignment: Alignment.center,
              child: Text(
                widget.name[0],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: widget.blackColor,
                ),
              ),
            ),
            const SizedBox(width: 16),

            // Nom + année
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.5,
                      color: widget.blackColor,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Depuis ${widget.year}',
                    style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w200,
                      color: widget.greyColor,
                    ),
                  ),
                ],
              ),
            ),

            // Flèche
            Icon(
              Icons.arrow_forward,
              size: 14,
              color: _pressed ? widget.goldColor : widget.dividerColor,
            ),
          ],
        ),
      ),
    );
  }
}