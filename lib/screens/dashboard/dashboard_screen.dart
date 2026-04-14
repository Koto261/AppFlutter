import 'package:flutter/material.dart';
import 'widgets/stat_item.dart';
import 'widgets/action_card.dart';
import 'widgets/history_item.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // HEADER
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1565C0), Color(0xFF42A5F5)],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bonjour 👋",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  "Votre assurance",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // STATS
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        StatItem("2", "Contrats"),
                        StatItem("1", "Devis"),
                        StatItem("0", "Sinistres"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ACTIONS
                  Row(
                    children: const [
                      ActionCard(
                        icon: Icons.calculate,
                        title: "Simulation",
                      ),
                      ActionCard(
                        icon: Icons.description,
                        title: "Contrats",
                      ),
                      ActionCard(
                        icon: Icons.warning,
                        title: "Sinistre",
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // HISTORIQUE
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Activité récente",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Expanded(
                    child: ListView(
                      children: [
                        HistoryItem(
                          icon: Icons.motorcycle,
                          title: "Devis moto",
                          subtitle: "72 910 Ar",
                        ),
                        HistoryItem(
                          icon: Icons.directions_car,
                          title: "Contrat voiture",
                          subtitle: "Actif",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}