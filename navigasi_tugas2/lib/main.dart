import 'package:flutter/material.dart';

import 'navigation/app_routes.dart';

void main() {
  runApp(const MitigasiPlusApp());
}

class MitigasiPlusApp extends StatelessWidget {
  const MitigasiPlusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MitigasiPlus',

      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),

      initialRoute: AppRoutes.beranda,

      routes: AppRoutes.routes,

      onGenerateRoute: AppRoutes.onGenerateRoute,

      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(title: const Text('Halaman Tidak Ditemukan')),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 70,
                      color: Colors.orange,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Halaman tidak ditemukan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.beranda,
                        );
                      },
                      child: const Text('Kembali ke Beranda'),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
