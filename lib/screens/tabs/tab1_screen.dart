import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • BallRadar Live'),
        actions: [
          IconButton(
            icon: const Icon(Icons.flash_on, color: AppTheme.secondaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppTheme.primaryColor.withValues(alpha: 0.35), AppTheme.surfaceColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.4)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('EUROPEAN CUP • 2ND LEG', style: TextStyle(color: Colors.white70, fontSize: 11, fontWeight: FontWeight.bold)),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(6)),
                      child: const Text('LIVE 78\'', style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _teamBox('Real Madrid', Icons.shield, '2'),
                    const Text('VS', style: TextStyle(color: Colors.white38, fontWeight: FontWeight.bold)),
                    _teamBox('Bayern Munich', Icons.shield_outlined, '1'),
                  ],
                ),
                const SizedBox(height: 14),
                const Text('Agg: 4 - 3 • ⚽ Vinicius Jr 44\', Bellingham 71\'', style: TextStyle(color: AppTheme.secondaryColor, fontSize: 12, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Active Matches Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _liveMatchTile('Man City', 'Inter Milan', '1 - 0', '64\'', true),
          _liveMatchTile('PSG', 'Atlético Madrid', '0 - 0', '52\'', true),
          _liveMatchTile('Juventus', 'Benfica', '20:45', 'Upcoming', false),
        ],
      ),
    );
  }

  Widget _teamBox(String name, IconData ic, String score) {
    return Column(
      children: [
        Icon(ic, size: 36, color: AppTheme.secondaryColor),
        const SizedBox(height: 6),
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        const SizedBox(height: 4),
        Text(score, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
      ],
    );
  }

  Widget _liveMatchTile(String h, String a, String score, String min, bool live) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text('$h vs $a', style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14), maxLines: 1, overflow: TextOverflow.ellipsis)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: live ? AppTheme.primaryColor.withValues(alpha: 0.2) : Colors.white10,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text('$score ($min)', style: TextStyle(color: live ? AppTheme.secondaryColor : Colors.white70, fontWeight: FontWeight.bold, fontSize: 12)),
          ),
        ],
      ),
    );
  }
}

