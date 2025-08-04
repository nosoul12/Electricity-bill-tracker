import 'package:flutter/material.dart';

// screens/analytics_card.dart
// A custom widget for an analytics overview card with dummy data.
class AnalyticsCard extends StatelessWidget {
  final VoidCallback onTap;

  const AnalyticsCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Analytics Overview",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              const Text("Peak Usage Hour: 7 PM - 9 PM"),
              const SizedBox(height: 4),
              const Text("Monthly Consumption: 320 kWh"),
              const SizedBox(height: 12),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue[50],
                ),
                child: const Center(child: Text("📊 Mini chart placeholder")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
