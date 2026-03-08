
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/accueil.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnim;
  late Animation<Offset> _slideAnim;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    _fadeAnim = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _slideAnim = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    ));

    // Lancer l'animation au démarrage
    Future.delayed(const Duration(milliseconds: 200), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // 🎨 Palette de couleurs
  static const Color _background = Color(0xFFFAFAF8);
  static const Color _black      = Color(0xFF1A1714);
  static const Color _gold       = Color(0xFFC8A96E);
  static const Color _grey       = Color(0xFFA09A92);
  static const Color _greyLight  = Color(0xFFC8B89A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // ── Contenu central (logo + titre + bouton) ──
            SlideTransition(
              position: _slideAnim,
              child: FadeTransition(
                opacity: _fadeAnim,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo volant
                    const _SteeringWheelIcon(size: 72),

                    const SizedBox(height: 32),

                    // Titre
                    const Text(
                      'CarsSelect',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1.5,
                        color: _black,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Sous-titre
                    const Text(
                      'MARQUES EUROPÉENNES',
                      style: TextStyle(
                      
                        fontSize: 11,
                        fontWeight: FontWeight.w200,
                        letterSpacing: 4,
                        color: _grey,
                      ),
                    ),

                    const SizedBox(height: 28),

                    // Trait doré
                    Container(
                      width: 40,
                      height: 1,
                      color: _gold,
                    ),

                    const SizedBox(height: 36),

                    // Bouton Explorer
                    _ExplorerButton(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const Accueil(title: "Accueil")),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            // ── Mention bas de page ──
            Positioned(
              bottom: 32,
              child: FadeTransition(
                opacity: _fadeAnim,
                child: const Text(
                  '65 MARQUES RÉFÉRENCÉES',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w200,
                    color: _greyLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Widget : icône volant dessinée en CustomPaint ──────────────────────────
class _SteeringWheelIcon extends StatelessWidget {
  final double size;
  const _SteeringWheelIcon({required this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _SteeringWheelPainter(),
    );
  }
}

class _SteeringWheelPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double cx = size.width / 2;
    final double cy = size.height / 2;
    final double r  = size.width / 2;

    final paintBlack = Paint()
      ..color = const Color(0xFF1A1714)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round;

    final paintGold = Paint()
      ..color = const Color(0xFFC8A96E)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.75;

    final paintFill = Paint()
      ..color = const Color(0xFF1A1714)
      ..style = PaintingStyle.fill;

    // Cercle extérieur
    canvas.drawCircle(Offset(cx, cy), r - 1, paintBlack);

    // Cercle intérieur doré
    canvas.drawCircle(Offset(cx, cy), r * 0.56, paintGold);

    // Centre plein
    canvas.drawCircle(Offset(cx, cy), r * 0.12, paintFill);

    // Rayons (haut, bas, gauche, droite)
    final double innerR = r * 0.12;
    final double outerR = r - 1;

    canvas.drawLine(
      Offset(cx, cy - innerR),
      Offset(cx, cy - outerR),
      paintBlack,
    );
    canvas.drawLine(
      Offset(cx, cy + innerR),
      Offset(cx, cy + outerR),
      paintBlack,
    );
    canvas.drawLine(
      Offset(cx - innerR, cy),
      Offset(cx - outerR, cy),
      paintBlack,
    );
    canvas.drawLine(
      Offset(cx + innerR, cy),
      Offset(cx + outerR, cy),
      paintBlack,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ── Widget : bouton "Explorer" ─────────────────────────────────────────────
class _ExplorerButton extends StatefulWidget {
  final VoidCallback onTap;
  const _ExplorerButton({required this.onTap});

  @override
  State<_ExplorerButton> createState() => _ExplorerButtonState();
}

class _ExplorerButtonState extends State<_ExplorerButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) {
        setState(() => _pressed = false);
        widget.onTap();
      },
      onTapCancel: () => setState(() => _pressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 200,
        height: 48,
        decoration: BoxDecoration(
          color: _pressed ? const Color(0xFF1A1714) : Colors.transparent,
          border: Border.all(color: const Color(0xFF1A1714), width: 1),
          borderRadius: BorderRadius.circular(2),
        ),
        alignment: Alignment.center,
        child: Text(
          'EXPLORER',
          style: TextStyle(
            fontSize: 11,
            letterSpacing: 4,
            fontWeight: FontWeight.w300,
            color: _pressed ? const Color(0xFFFAFAF8) : const Color(0xFF1A1714),
          ),
        ),
      ),
    );
  }
}
