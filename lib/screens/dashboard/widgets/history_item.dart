import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const HistoryItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}