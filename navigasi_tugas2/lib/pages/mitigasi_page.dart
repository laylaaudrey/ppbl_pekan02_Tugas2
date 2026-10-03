import 'package:flutter/material.dart';

import '../navigation/app_routes.dart';

class MitigasiPage extends StatelessWidget {
  const MitigasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        appBar: AppBar(
          title: const Text('Mitigasi Bencana'),

          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.shield),
                text: 'Sebelum',
              ),

              Tab(
                icon: Icon(Icons.warning),
                text: 'Saat Bencana',
              ),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            SebelumBencana(),
            SaatBencana(),
          ],
        ),

        bottomNavigationBar: NavigationBar(
          selectedIndex: 2,

          onDestinationSelected: (index) {
            final routes = [
              AppRoutes.beranda,
              AppRoutes.laporan,
              AppRoutes.mitigasi,
              AppRoutes.profil,
            ];

            Navigator.pushReplacementNamed(
              context,
              routes[index],
            );
          },

          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Beranda',
            ),

            NavigationDestination(
              icon: Icon(Icons.report_outlined),
              label: 'Laporan',
            ),

            NavigationDestination(
              icon: Icon(Icons.shield),
              label: 'Mitigasi',
            ),

            NavigationDestination(
              icon: Icon(Icons.person_outline),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}

class SebelumBencana extends StatelessWidget {
  const SebelumBencana({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),

      children: const [
        Card(
          child: ListTile(
            leading: Icon(
              Icons.backpack,
              color: Colors.blue,
            ),
            title: Text('Siapkan Tas Darurat'),
            subtitle: Text(
              'Siapkan makanan, air, obat-obatan, senter, dan dokumen penting.',
            ),
          ),
        ),

        Card(
          child: ListTile(
            leading: Icon(
              Icons.location_on,
              color: Colors.red,
            ),
            title: Text('Kenali Jalur Evakuasi'),
            subtitle: Text(
              'Ketahui lokasi titik kumpul dan jalur evakuasi terdekat.',
            ),
          ),
        ),

        Card(
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.green,
            ),
            title: Text('Simpan Nomor Darurat'),
            subtitle: Text(
              'Simpan nomor layanan darurat yang dapat dihubungi.',
            ),
          ),
        ),
      ],
    );
  }
}

class SaatBencana extends StatelessWidget {
  const SaatBencana({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),

      children: const [
        Card(
          child: ListTile(
            leading: Icon(
              Icons.pan_tool,
              color: Colors.orange,
            ),
            title: Text('Tetap Tenang'),
            subtitle: Text(
              'Jangan panik dan ikuti arahan petugas.',
            ),
          ),
        ),

        Card(
          child: ListTile(
            leading: Icon(
              Icons.directions_run,
              color: Colors.red,
            ),
            title: Text('Evakuasi'),
            subtitle: Text(
              'Segera menuju lokasi aman melalui jalur evakuasi.',
            ),
          ),
        ),

        Card(
          child: ListTile(
            leading: Icon(
              Icons.groups,
              color: Colors.blue,
            ),
            title: Text('Menuju Titik Kumpul'),
            subtitle: Text(
              'Berkumpul di tempat yang telah ditentukan.',
            ),
          ),
        ),
      ],
    );
  }
}