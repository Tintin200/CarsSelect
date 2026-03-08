import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key, required this.title});
  final String title;

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  // ── Palette ──────────────────────────────────────────────────────────────
  static const Color _background = Color(0xFFFAFAF8);
  static const Color _black      = Color(0xFF1A1714);
  static const Color _gold       = Color(0xFFC8A96E);
  static const Color _grey       = Color(0xFFA09A92);
  static const Color _divider    = Color(0xFFE8E5DF);

  // ── Données pays ─────────────────────────────────────────────────────────
  final List<Map<String, String>> _countries = const [
    {'name': 'France',      'route': '/france',     'flag': 'assets/images/france.png',     'count': '6'},
    {'name': 'Allemagne',   'route': '/allemagne',  'flag': 'assets/images/allemagne.png',  'count': '7'},
    {'name': 'Italie',      'route': '/italie',     'flag': 'assets/images/italie.png',     'count': '8'},
    {'name': 'Grande-Bretagne',  'route': '/angleterre', 'flag': 'assets/images/uk.png', 'count': '8'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,

      // ── AppBar ────────────────────────────────────────────────────────────
      appBar: AppBar(
        backgroundColor: _background,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: const Text(
          'CARSSELECT',
          style: TextStyle(
            fontSize: 12,
            letterSpacing: 6,
            fontWeight: FontWeight.w300,
            color: _black,
          ),
        ),
        // Bouton menu hamburger
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: _black, size: 20),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),

      // ── Drawer ────────────────────────────────────────────────────────────
      drawer: Drawer(
        backgroundColor: _background,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header drawer
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 32, 28, 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 24, height: 1, color: _gold),
                    const SizedBox(height: 16),
                    const Text(
                      'CARSSELECT',
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 4,
                        fontWeight: FontWeight.w300,
                        color: _black,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Marques européennes',
                      style: TextStyle(
                        fontSize: 11,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w200,
                        color: _grey,
                      ),
                    ),
                  ],
                ),
              ),

              Container(height: 1, color: _divider),
              const SizedBox(height: 16),

              // Items pays
              ..._countries.map((c) => _DrawerItem(
                name: c['name']!,
                route: c['route']!,
                gold: _gold,
                grey: _grey,
                divider: _divider,
                black: _black,
              )),

              const Spacer(),

              // Footer
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 0, 28, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 1, color: _divider),
                    const SizedBox(height: 16),
                    const Text(
                      '© 2025 CarsSelect',
                      style: TextStyle(
                        fontSize: 10,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w200,
                        color: _grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // ── Body ──────────────────────────────────────────────────────────────
      body: Column(
        children: [
          Container(height: 1, color: _divider),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // ── Sous-titre ──
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36),
                    child: Column(
                      children: [
                        const Text(
                          'CHOISIR UN PAYS',
                          style: TextStyle(
                            fontSize: 10,
                            letterSpacing: 4,
                            fontWeight: FontWeight.w300,
                            color: _grey,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(width: 30, height: 1, color: _gold),
                      ],
                    ),
                  ),

                  // ── Grille pays ──
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1.4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: _countries.map((c) => _CountryCard(
                        name: c['name']!,
                        route: c['route']!,
                        flag: c['flag']!,
                        count: c['count']!,
                        black: _black,
                        gold: _gold,
                        grey: _grey,
                        divider: _divider,
                      )).toList(),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // ── Footer stats ──
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        const _StatBox(value: '4',  label: 'PAYS',    gold: _gold, grey: _grey, divider: _divider),
                        Container(width: 1, height: 50, color: _divider),
                        const _StatBox(value: '29', label: 'MARQUES', gold: _gold, grey: _grey, divider: _divider),
                        Container(width: 1, height: 50, color: _divider),
                        const _StatBox(value: 'EU', label: 'RÉGION',  gold: _gold, grey: _grey, divider: _divider),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    height: 1,
                    color: _divider,
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

// ── Widget : carte pays ───────────────────────────────────────────────────
class _CountryCard extends StatefulWidget {
  final String name;
  final String route;
  final String flag;
  final String count;
  final Color black;
  final Color gold;
  final Color grey;
  final Color divider;

  const _CountryCard({
    required this.name,
    required this.route,
    required this.flag,
    required this.count,
    required this.black,
    required this.gold,
    required this.grey,
    required this.divider,
  });

  @override
  State<_CountryCard> createState() => _CountryCardState();
}

class _CountryCardState extends State<_CountryCard> {
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
        decoration: BoxDecoration(
          color: _pressed ? const Color(0xFFF2F0EC) : const Color(0xFFFAFAF8),
          border: Border.all(color: widget.divider),
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Drapeau
            ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Image.asset(
                widget.flag,
                width: 48,
                height: 28,
                fit: BoxFit.cover,
              ),
            ),

            // Nom + nb marques
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.5,
                    color: widget.black,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  '${widget.count} marques',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w200,
                    color: widget.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ── Widget : item drawer ──────────────────────────────────────────────────
class _DrawerItem extends StatefulWidget {
  final String name;
  final String route;
  final Color gold;
  final Color grey;
  final Color divider;
  final Color black;

  const _DrawerItem({
    required this.name,
    required this.route,
    required this.gold,
    required this.grey,
    required this.divider,
    required this.black,
  });

  @override
  State<_DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<_DrawerItem> {
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
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.name,
                style: TextStyle(
                  fontSize: 13,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  color: widget.black,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward,
              size: 13,
              color: _pressed ? widget.gold : widget.divider,
            ),
          ],
        ),
      ),
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
        padding: const EdgeInsets.symmetric(vertical: 18),
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
            const SizedBox(height: 5),
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