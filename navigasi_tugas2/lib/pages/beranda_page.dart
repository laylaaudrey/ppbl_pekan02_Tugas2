import 'package:flutter/material.dart';

import '../navigation/app_routes.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  int selectedIndex = 0;

  final List<String> routes = [
    AppRoutes.beranda,
    AppRoutes.laporan,
    AppRoutes.mitigasi,
    AppRoutes.profil,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MitigasiPlus'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                AppRoutes.profil,
              );
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Selamat Datang!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'Tetap waspada dan siap menghadapi bencana.',
            ),

            const SizedBox(height: 20),

            // CUACA
            Card(
              color: Colors.blue.shade50,
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.cloud,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Cuaca Hari Ini',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15),

                    Text(
                      '26°C',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text('Berawan'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Menu Utama',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: _menuButton(
                    context,
                    'Laporan',
                    Icons.report,
                    AppRoutes.laporan,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: _menuButton(
                    context,
                    'Mitigasi',
                    Icons.shield,
                    AppRoutes.mitigasi,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.location_on,
                            size: 35,
                            color: Colors.red,
                          ),
                          SizedBox(height: 8),
                          Text('Lokasi Aman'),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.phone,
                            size: 35,
                            color: Colors.green,
                          ),
                          SizedBox(height: 8),
                          Text('Kontak Darurat'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,

        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });

          Navigator.pushReplacementNamed(
            context,
            routes[index],
          );
        },

        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Beranda',
          ),

          NavigationDestination(
            icon: Icon(Icons.report_outlined),
            selectedIcon: Icon(Icons.report),
            label: 'Laporan',
          ),

          NavigationDestination(
            icon: Icon(Icons.shield_outlined),
            selectedIcon: Icon(Icons.shield),
            label: 'Mitigasi',
          ),

          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget _menuButton(
    BuildContext context,
    String title,
    IconData icon,
    String route,
  ) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            route,
          );
        },

        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.blue,
              ),

              const SizedBox(height: 8),

              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}