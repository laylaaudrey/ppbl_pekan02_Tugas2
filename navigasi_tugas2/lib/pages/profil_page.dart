import 'package:flutter/material.dart';

import '../navigation/app_routes.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 55,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Akun Demo',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                'demo@gmail.com',
              ),

              const SizedBox(height: 30),

              const ListTile(
                leading: Icon(Icons.phone),
                title: Text('Nomor Telepon'),
                subtitle: Text('081234567890'),
              ),

              const ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Lokasi'),
                subtitle: Text('Kota Palu'),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: 3,

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
            icon: Icon(Icons.report_outlined),
            label: 'Laporan',
          ),

          NavigationDestination(
            icon: Icon(Icons.shield_outlined),
            label: 'Mitigasi',
          ),

          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}