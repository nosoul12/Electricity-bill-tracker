import 'package:elextricity_bill_app/core/colors.dart';

import 'package:flutter/material.dart';

import '../knowledge/knowledge_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Knowledge Section
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.lightbulb_outline, color: AppColors.primary),
              title: const Text('Knowledge Hub'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const KnowledgeScreen(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          // Logout Section
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.logout, color: AppColors.primary),
              title: const Text('Logout'),
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/login',
                      (Route<dynamic> route) => false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}