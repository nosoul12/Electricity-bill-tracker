import 'package:flutter/material.dart';

// screens/bill_details_card.dart
// A custom widget for a detailed bill card with dummy data.
class BillDetailsCard extends StatelessWidget {
  final VoidCallback onTap;

  const BillDetailsCard({super.key, required this.onTap});

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
                "Current Bill",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Text(
                "₹ 1240",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                ),
              ),
              const SizedBox(height: 4),
              const Text("Units Used: 320 kWh"),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: 320 / 500, // Example: 500 kWh monthly limit
                backgroundColor: Colors.grey[200],
                color: Colors.blue,
              ),
              const SizedBox(height: 4),
              const Text(
                "Last updated: 5 min ago",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
