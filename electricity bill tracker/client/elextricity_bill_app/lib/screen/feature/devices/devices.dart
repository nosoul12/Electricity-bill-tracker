import 'package:elextricity_bill_app/widgets/add_devices.dart';
import 'package:flutter/material.dart';

class ManageDevicesPage extends StatefulWidget {
  const ManageDevicesPage({super.key});

  @override
  State<ManageDevicesPage> createState() => _ManageDevicesPageState();
}

class _ManageDevicesPageState extends State<ManageDevicesPage> {
  List<Map<String, String>> devices = [
    {"name": "Refrigerator", "usage": "₹ 300/month", "status": "On"},
    {"name": "Washing Machine", "usage": "₹ 120/month", "status": "Off"},
    {"name": "Air Conditioner", "usage": "₹ 850/month", "status": "On"},
  ];

  void _addDevice() async {
    final newDevice = await showModalBottomSheet<Map<String, String>>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => const AddDeviceForm(),
    );

    if (newDevice != null) {
      setState(() {
        devices.add(newDevice);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
              onTap: () {},
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _addDevice,
        label: const Text("Add Device"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
