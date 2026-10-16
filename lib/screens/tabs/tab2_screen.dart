import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final fixtures = [
      {'time': '18:45', 'match': 'Feyenoord vs Bayer Leverkusen', 'comp': 'Champions Group'},
      {'time': '21:00', 'match': 'Monaco vs FC Barcelona', 'comp': 'Champions Group'},
      {'time': '21:00', 'match': 'Atalanta vs Arsenal FC', 'comp': 'Champions Group'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Today\'s Fixtures')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: fixtures.length,
        itemBuilder: (context, i) {
          final f = fixtures[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(color: AppTheme.primaryColor.withValues(alpha: 0.2), borderRadius: BorderRadius.circular(8)),
                  child: Text(f['time']!, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 12)),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(f['match']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14), maxLines: 1, overflow: TextOverflow.ellipsis),
                      Text(f['comp']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => RoutingService.openRegistrationUrl(),
                  style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor, foregroundColor: Colors.white),
                  child: const Text('Alert'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

