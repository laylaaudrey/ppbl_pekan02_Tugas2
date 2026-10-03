import 'package:flutter/material.dart';

import '../navigation/app_routes.dart';

class LaporanPage extends StatelessWidget {
  const LaporanPage({super.key});

  final List<Map<String, String>> laporan = const [
    {
      'judul': 'Gempa Susulan',
      'lokasi': 'Kota Palu',
      'tanggal': '03 Oktober 2026',
      'deskripsi':
          'Terjadi gempa susulan dengan kekuatan sedang. Warga diimbau tetap waspada.',
    },
    {
      'judul': 'Angin Kencang',
      'lokasi': 'Pantai Talise',
      'tanggal': '02 Oktober 2026',
      'deskripsi':
          'Angin kencang terjadi di sekitar wilayah pantai. Masyarakat diminta berhati-hati.',
    },
    {
      'judul': 'Longsor',
      'lokasi': 'Perbukitan Tondo',
      'tanggal': '01 Oktober 2026',
      'deskripsi':
          'Terjadi longsor kecil di daerah perbukitan. Petugas sedang melakukan pemeriksaan.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laporan Kondisi'),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: laporan.length,

        itemBuilder: (context, index) {
          final data = laporan[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),

            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.warning),
              ),

              title: Text(
                data['judul']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text(
                '${data['lokasi']}\n${data['tanggal']}',
              ),

              isThreeLine: true,

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),

              onTap: () {

                Navigator.pushNamed(
                  context,
                  AppRoutes.detailLaporan,

                  arguments: data,
                );

              },
            ),
          );
        },
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,

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

        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Beranda',
          ),

          NavigationDestination(
            icon: Icon(Icons.report),
            label: 'Laporan',
          ),

          NavigationDestination(
            icon: Icon(Icons.shield_outlined),
            label: 'Mitigasi',
          ),

          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}