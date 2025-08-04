import 'package:elextricity_bill_app/core/colors.dart';
import 'package:flutter/material.dart';

// screens/feature/onboarding/splash_scree.dart
// The splash screen with a timer to navigate to onboarding.
class SplashScree extends StatefulWidget {
  const SplashScree({super.key});

  @override
  State<SplashScree> createState() => _SplashScreeState();
}

class _SplashScreeState extends State<SplashScree>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();

    // Use a Future to delay the navigation for a few seconds.
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the onboarding slides and remove the splash screen from the navigation stack.
      Navigator.of(context).pushReplacementNamed('/onboarding');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Placeholder for a logo or hero icon
              const Icon(Icons.bolt, color: AppColors.textLight, size: 100),
              const SizedBox(height: 16),
              Text(
                'Power App',
                style: AppTextStyles.headline1.copyWith(
                  color: AppColors.textLight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
