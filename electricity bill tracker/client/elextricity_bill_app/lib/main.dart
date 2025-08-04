// main.dart
// This is the main entry point of the Flutter application.
import 'package:elextricity_bill_app/core/colors.dart';
import 'package:elextricity_bill_app/screen/feature/analytics/analytics.dart';
import 'package:elextricity_bill_app/screen/feature/auth/login_screen.dart';
import 'package:elextricity_bill_app/screen/feature/auth/sign_up_screen.dart';
import 'package:elextricity_bill_app/screen/feature/bill_details/bill_details.dart';
import 'package:elextricity_bill_app/screen/feature/devices/devices.dart';
import 'package:elextricity_bill_app/screen/feature/onboarding/slides.dart';
import 'package:elextricity_bill_app/screen/feature/onboarding/splash_scree.dart';
import 'package:elextricity_bill_app/screen/feature/settings/setting_screen.dart';
import 'package:elextricity_bill_app/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Major Project',
      theme: AppTheme.lightTheme, // Use the custom theme
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => const SplashScree(),
        '/onboarding': (context) => const Slides(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/home': (context) => const Home_Screen(),
        '/bill-details': (context) => const BillDetailsPage(),
        '/devices': (context) => const ManageDevicesPage(),
        '/analytics': (context) => const AnalyticsDetailsPage(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
