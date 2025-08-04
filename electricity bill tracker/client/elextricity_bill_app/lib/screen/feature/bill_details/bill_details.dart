import 'package:flutter/material.dart';

class BillDetailsPage extends StatelessWidget {
  const BillDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data (with mixed types)
    final billBreakdown = [
      {
        "slab": "0 - 100 units",
        "rate": "₹ 4.50",
        "units": 100,
        "cost": "₹ 450",
      },
      {
        "slab": "101 - 200 units",
        "rate": "₹ 5.50",
        "units": 120,
        "cost": "₹ 660",
      },
      {
        "slab": "201 - 300 units",
        "rate": "₹ 6.50",
        "units": 100,
        "cost": "₹ 650",
      },
    ];

    final totalBill = 1760;
    final totalUnits = 320;

    return Scaffold(
      appBar: AppBar(title: const Text("Bill Details")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Total bill summary card
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Total Bill: ₹ $totalBill",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Total Units: $totalUnits kWh",
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Breakdown header
            const Text(
              "Breakdown",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),

            // Bill breakdown list
            Expanded(
              child: ListView.separated(
                itemCount: billBreakdown.length,
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (context, index) {
                  final item = billBreakdown[index];
                  return Card(
                    elevation: 1,
                    child: ListTile(
                      title: Text(item["slab"].toString()),
                      subtitle: Text(
                        "Rate: ${item["rate"]}  •  Units: ${item["units"].toString()}",
                      ),
                      trailing: Text(
                        item["cost"].toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // Tariff policy info
            const Text(
              "Tariff Policy (Indore/Bhopal)",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            const Text(
              "Free Units: 50\nSlab rates increase progressively based on consumption.",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
