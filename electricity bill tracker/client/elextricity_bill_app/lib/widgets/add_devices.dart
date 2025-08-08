import 'package:flutter/material.dart';

class AddDeviceForm extends StatefulWidget {
  const AddDeviceForm({super.key});

  @override
  State<AddDeviceForm> createState() => _AddDeviceFormState();
}

class _AddDeviceFormState extends State<AddDeviceForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _type = 'Switch';
  String _deviceId = '';
  String _powerRating = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 24,
        left: 16,
        right: 16,
      ),
      child: Form(
        key: _formKey,
        child: Wrap(
          children: [
            const Center(
              child: Text(
                'Add New Device',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),

            // Device Name
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Device Name',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) => _name = value!.trim(),
              validator:
                  (value) => value!.isEmpty ? 'Please enter device name' : null,
            ),
            const SizedBox(height: 12),

            // Device Type
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Device Type',
                border: OutlineInputBorder(),
              ),
              value: _type,
              items: const [
                DropdownMenuItem(value: 'Switch', child: Text('Switch')),
                DropdownMenuItem(value: 'Meter', child: Text('Meter')),
              ],
              onChanged: (value) => setState(() => _type = value!),
            ),
            const SizedBox(height: 12),

            // Power Rating
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Power Rating (Watts)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onSaved: (value) => _powerRating = value!.trim(),
              validator:
                  (value) => value!.isEmpty ? 'Enter power rating' : null,
            ),
            const SizedBox(height: 12),

            // Device ID
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Device ID',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) => _deviceId = value!.trim(),
              validator:
                  (value) => value!.isEmpty ? 'Enter unique device ID' : null,
            ),
            const SizedBox(height: 20),

            // Submit Button
            ElevatedButton.icon(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  // For now, just print or pop with result
                  Navigator.pop(context, {
                    "name": _name,
                    "type": _type,
                    "power_rating": _powerRating,
                    "device_id": _deviceId,
                    "usage": "₹ 0/month",
                    "status": "Off",
                  });
                }
              },
              icon: const Icon(Icons.add),
              label: const Text('Add Device'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
