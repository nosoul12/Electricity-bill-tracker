import 'package:flutter/material.dart';

// screens/manage_devices_page.dart
// The page to manage connected devices.
class ManageDevicesPage extends StatelessWidget {
  const ManageDevicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy devices
    final devices = [
      {"name": "Refrigerator", "usage": "₹ 300/month", "status": "On"},
      {"name": "Washing Machine", "usage": "₹ 120/month", "status": "Off"},
      {"name": "Air Conditioner", "usage": "₹ 850/month", "status": "On"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Manage Devices")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: devices.length,
        itemBuilder: (context, index) {
          final device = devices[index];
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              title: Text(device["name"]!),
              subtitle: Text("Usage: ${device["usage"]}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    device["status"]!,
                    style: TextStyle(
                      color:
                          device["status"] == "On" ? Colors.green : Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.chevron_right),
                ],
              ),
              onTap: () {
                // Navigate to device details
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add device action
        },
        label: const Text("Add Device"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
