import 'package:flutter/material.dart';

class GameRankingCard extends StatelessWidget {
  const GameRankingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    final gameNameStyle = Theme.of(
      context,
    ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold);

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.emoji_events, color: Colors.amber, size: 32),
                const SizedBox(width: 8),
                Text('Mi Top 3 Sagas de videojuegos', style: titleStyle),
              ],
            ),
            const SizedBox(height: 16),
            GameRow(
              rank: '1',
              name: 'Resident Evil',
              asset: 'assets/images/re_icon.jpg',
              imageSize: 50,
              nameStyle: gameNameStyle,
            ),
            const SizedBox(height: 12),
            GameRow(
              rank: '2',
              name: 'Devil May Cry',
              asset: 'assets/images/dmc_icon.jpg',
              imageSize: 50,
              nameStyle: gameNameStyle,
            ),
            const SizedBox(height: 12),
            GameRow(
              rank: '3',
              name: 'Mortal Kombat',
              asset: 'assets/images/mk_icon.jpg',
              imageSize: 50,
              nameStyle: gameNameStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class GameRow extends StatelessWidget {
  final String rank;
  final String name;
  final String asset;
  final double imageSize;
  final TextStyle? nameStyle;

  const GameRow({
    required this.rank,
    required this.name,
    required this.asset,
    this.imageSize = 30,
    this.nameStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rank,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        Image.asset(
          asset,
          width: imageSize,
          height: imageSize,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 16),
        Text(name, style: nameStyle ?? const TextStyle(fontSize: 16)),
      ],
    );
  }
}
