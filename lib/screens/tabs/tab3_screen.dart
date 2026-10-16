import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • In-Game Stats')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(18)),
            child: Column(
              children: [
                const Text('Match Possession', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Real Madrid: 58%', style: TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold)),
                    Text('Bayern: 42%', style: TextStyle(color: Colors.white70)),
                  ],
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(value: 0.58, color: AppTheme.primaryColor, backgroundColor: Colors.white12, minHeight: 8),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _statRow('Shots on Target', '7 - 4'),
          _statRow('Corner Kicks', '8 - 3'),
          _statRow('Fouls Committed', '9 - 12'),
        ],
      ),
    );
  }

  Widget _statRow(String label, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.white70)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppTheme.secondaryColor)),
        ],
      ),
    );
  }
}

