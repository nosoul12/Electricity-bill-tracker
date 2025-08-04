import 'package:elextricity_bill_app/core/colors.dart';
import 'package:flutter/material.dart';

// screens/feature/onboarding/slides.dart
// Onboarding slides with a button to navigate to the login screen.
class Slides extends StatelessWidget {
  const Slides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Placeholder for a hero image or animation
              const Icon(
                Icons.lightbulb_outline,
                color: AppColors.accent,
                size: 120,
              ),
              const SizedBox(height: 48),
              Text(
                'Manage Your Electricity Bills with Ease',
                style: AppTextStyles.headline1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Track your consumption, view analytics, and pay your bills—all in one place.',
                style: AppTextStyles.bodyText1.copyWith(
                  color: AppColors.secondaryText,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 64),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the login screen.
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                child: const Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
