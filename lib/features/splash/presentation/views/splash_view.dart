import 'dart:math';
import 'package:animooo/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  // Background Ken Burns zoom animation
  late final AnimationController _bgController;
  late final Animation<double> _bgScale;

  // Background fade-in reveal
  late final AnimationController _revealController;
  late final Animation<double> _revealOpacity;

  // Particle system
  late final AnimationController _particleController;
  final List<_Particle> _particles = [];
  final Random _random = Random();

  // Loading bar
  late final AnimationController _loadingController;

  // Pulsing glow on the center of the image (where the logo lives)
  late final AnimationController _pulseController;

  @override
  void initState() {
    super.initState();

    // Immersive mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _initAnimations();
    _generateParticles();
    _startAnimationSequence();
  }

  void _initAnimations() {
    // Background slow zoom (Ken Burns effect)
    _bgController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 8000),
    );
    _bgScale = Tween<double>(begin: 1.05, end: 1.0).animate(
      CurvedAnimation(parent: _bgController, curve: Curves.easeOut),
    );

    // Reveal: image fades in from black
    _revealController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _revealOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _revealController, curve: Curves.easeIn),
    );

    // Pulse glow behind the logo area
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    // Particle animation
    _particleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 6000),
    );

    // Loading bar
    _loadingController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );
  }

  void _generateParticles() {
    for (int i = 0; i < 35; i++) {
      _particles.add(
        _Particle(
          x: _random.nextDouble(),
          y: _random.nextDouble(),
          size: _random.nextDouble() * 3 + 1,
          speed: _random.nextDouble() * 0.4 + 0.1,
          opacity: _random.nextDouble() * 0.6 + 0.2,
          delay: _random.nextDouble(),
        ),
      );
    }
  }

  void _startAnimationSequence() async {
    // Image reveals from black
    await Future.delayed(const Duration(milliseconds: 300));
    _revealController.forward();

    // Background zoom starts
    _bgController.forward();

    // Pulse glow starts after image is visible
    await Future.delayed(const Duration(milliseconds: 1000));
    _pulseController.repeat(reverse: true);

    // Particles start floating
    await Future.delayed(const Duration(milliseconds: 500));
    _particleController.repeat();

    // Loading bar starts
    await Future.delayed(const Duration(milliseconds: 500));
    _loadingController.forward();

    // Navigate after splash completes
    await Future.delayed(const Duration(milliseconds: 3500));
    if (mounted) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.edgeToEdge,
        overlays: SystemUiOverlay.values,
      );
      context.go(AppRouter.login);
    }
  }

  @override
  void dispose() {
    _bgController.dispose();
    _revealController.dispose();
    _pulseController.dispose();
    _particleController.dispose();
    _loadingController.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Layer 1: Background image with Ken Burns zoom + fade-in reveal
          _buildBackground(),

          // Layer 2: Dark gradient overlay for depth
          _buildGradientOverlay(),

          // Layer 3: Center glow pulse behind logo area
          _buildCenterGlow(),

          // Layer 4: Floating particles
          _buildParticles(),

          // Layer 5: Vignette effect
          _buildVignette(),

          // Layer 6: Bottom loading indicator
          _buildLoadingBar(),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return AnimatedBuilder(
      animation: Listenable.merge([_bgScale, _revealOpacity]),
      builder: (context, child) {
        return Opacity(
          opacity: _revealOpacity.value,
          child: Transform.scale(
            scale: _bgScale.value,
            child: child,
          ),
        );
      },
      child: Image.asset(
        'assets/images/splash_screen_under_12.png',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }

  Widget _buildGradientOverlay() {
    return FadeTransition(
      opacity: _revealOpacity,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withValues(alpha: 0.25),
              Colors.black.withValues(alpha: 0.05),
              Colors.black.withValues(alpha: 0.1),
              Colors.black.withValues(alpha: 0.65),
            ],
            stops: const [0.0, 0.35, 0.6, 1.0],
          ),
        ),
      ),
    );
  }

  Widget _buildCenterGlow() {
    return AnimatedBuilder(
      animation: _pulseController,
      builder: (context, _) {
        final pulseValue = _pulseController.value;
        return Center(
          child: Container(
            width: 200 + pulseValue * 40,
            height: 200 + pulseValue * 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFD4AF37).withValues(
                    alpha: 0.15 + 0.1 * pulseValue,
                  ),
                  blurRadius: 60 + pulseValue * 30,
                  spreadRadius: 10 + pulseValue * 15,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildParticles() {
    return AnimatedBuilder(
      animation: _particleController,
      builder: (context, _) {
        return CustomPaint(
          painter: _ParticlePainter(
            particles: _particles,
            progress: _particleController.value,
          ),
          size: Size.infinite,
        );
      },
    );
  }

  Widget _buildVignette() {
    return IgnorePointer(
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.2,
            colors: [
              Colors.transparent,
              Colors.black.withValues(alpha: 0.4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingBar() {
    return Positioned(
      bottom: 60,
      left: 0,
      right: 0,
      child: AnimatedBuilder(
        animation: _loadingController,
        builder: (context, _) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Loading bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: SizedBox(
                    height: 3,
                    child: Stack(
                      children: [
                        // Track
                        Container(
                          color: Colors.white.withValues(alpha: 0.15),
                        ),
                        // Progress with gradient
                        FractionallySizedBox(
                          widthFactor: _loadingController.value,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFD4AF37),
                                  Color(0xFFF5E6A3),
                                  Color(0xFFD4AF37),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(
                                    0xFFD4AF37,
                                  ).withValues(alpha: 0.6),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Percentage text
              Opacity(
                opacity: _loadingController.value > 0 ? 1.0 : 0.0,
                child: Text(
                  '${(_loadingController.value * 100).toInt()}%',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// Particle data model
class _Particle {
  final double x;
  final double y;
  final double size;
  final double speed;
  final double opacity;
  final double delay;

  _Particle({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
    required this.opacity,
    required this.delay,
  });
}

// Custom particle painter
class _ParticlePainter extends CustomPainter {
  final List<_Particle> particles;
  final double progress;

  _ParticlePainter({required this.particles, required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    for (final particle in particles) {
      final adjustedProgress = (progress + particle.delay) % 1.0;
      final currentY =
          size.height * (1 - adjustedProgress * particle.speed * 2.5);
      final currentX =
          size.width * particle.x +
          sin(adjustedProgress * 2 * pi * 3) * 15;

      // Fade in/out based on position
      double alpha = particle.opacity;
      if (adjustedProgress < 0.1) {
        alpha *= adjustedProgress / 0.1;
      } else if (adjustedProgress > 0.8) {
        alpha *= (1.0 - adjustedProgress) / 0.2;
      }

      final paint =
          Paint()
            ..color = const Color(0xFFD4AF37).withValues(alpha: alpha)
            ..maskFilter = MaskFilter.blur(BlurStyle.normal, particle.size);

      canvas.drawCircle(
        Offset(currentX, currentY),
        particle.size,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _ParticlePainter oldDelegate) => true;
}
