import 'package:elextricity_bill_app/core/colors.dart';
import 'package:flutter/material.dart';

class KnowledgeScreen extends StatelessWidget {
  const KnowledgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Knowledge Hub')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Electricity Bill in Indore (MPPKVVCL)',
              style: AppTextStyles.headline2.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const KnowledgeCard(
              title: 'How is your bill calculated?',
              content:
              'Your bill from Madhya Pradesh Paschim Kshetra Vidyut Vitaran Company Limited (MPPKVVCL) is calculated based on a slab-rate system. Your total usage in units (kWh) is multiplied by the corresponding tariff rate for each slab. Fixed charges, fuel adjustment charges, and taxes are then added to get the final amount.\n\nHere are the approximate per-unit rates (subject to change):\n- Below 50 units: ₹4.05/unit\n- 51-150 units: ₹4.95/unit\n- 151-300 units: ₹6.3/unit\n- Above 300 units: ₹6.5/unit\n\n(Note: This is a simplified breakdown. The actual bill may include other charges and taxes.)',
            ),
            const SizedBox(height: 16),
            const KnowledgeCard(
              title: 'How many units are free?',
              content:
              'The Government of Madhya Pradesh offers a subsidy under the "Atal Graha Jyoti Yojana" (formerly Indira Graha Jyoti Yojana). Under this scheme, domestic consumers with a monthly consumption of up to 150 units receive a subsidized bill. For consumption up to 100 units, the bill is charged at a flat rate of ₹100, with the state government paying the difference as a subsidy. This benefit is automatically applied through the billing system for eligible consumers.',
            ),
            const SizedBox(height: 16),
            Text(
              'Tips to save on your electricity bill',
              style: AppTextStyles.headline2.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            KnowledgeCard(
              title: 'Use Energy-Efficient Appliances',
              content:
              'Replace old incandescent bulbs with LEDs. Opt for appliances with a high BEE (Bureau of Energy Efficiency) star rating, as they consume significantly less power.',
            ),
            const SizedBox(height: 8),
            KnowledgeCard(
              title: 'Unplug Devices',
              content:
              'Many appliances consume "phantom power" even when turned off. Unplug chargers, TVs, and microwaves when not in use to save on this hidden cost.',
            ),
            const SizedBox(height: 8),
            KnowledgeCard(
              title: 'Use ACs Wisely',
              content:
              'Set your AC temperature to around 24°C, as every degree lower can increase power consumption by 6-8%. Use ceiling fans to circulate cool air effectively.',
            ),
            const SizedBox(height: 8),
            KnowledgeCard(
              title: 'Leverage Natural Light and Air',
              content:
              'Open curtains and windows during the day to use natural light and air, reducing the need for artificial lighting and cooling. Close them during the hottest parts of the day to keep your home cool.',
            ),
          ],
        ),
      ),
    );
  }
}

class KnowledgeCard extends StatelessWidget {
  final String title;
  final String content;

  const KnowledgeCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.bodyText1.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: AppTextStyles.bodyText1.copyWith(
                color: AppColors.secondaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}