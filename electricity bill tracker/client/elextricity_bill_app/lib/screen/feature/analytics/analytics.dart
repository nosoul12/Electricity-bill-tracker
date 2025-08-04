import 'package:flutter/material.dart';

class AnalyticsDetailsPage extends StatelessWidget {
  const AnalyticsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy analytics data
    final monthlyUsage = [
      {"month": "Jan", "units": 280},
      {"month": "Feb", "units": 300},
      {"month": "Mar", "units": 320},
      {"month": "Apr", "units": 290},
    ];

    final peakHour = "7 PM - 9 PM";
    final totalConsumption = 320; // current month

    return Scaffold(
      appBar: AppBar(title: const Text("Analytics")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            // Peak usage card
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: const Text("Peak Usage Hour"),
                subtitle: Text(peakHour.toString()),
                leading: const Icon(Icons.access_time, color: Colors.orange),
              ),
            ),
            const SizedBox(height: 16),

            // Total monthly consumption card
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: const Text("Total Monthly Consumption"),
                subtitle: Text("${totalConsumption.toString()} kWh"),
                leading: const Icon(Icons.bolt, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 16),

            // Monthly usage history
            const Text(
              "Monthly Usage History",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),

            // Loop through monthly usage list
            ...monthlyUsage.map((data) {
              return Card(
                child: ListTile(
                  title: Text(data["month"].toString()),
                  trailing: Text("${data["units"].toString()} kWh"),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
