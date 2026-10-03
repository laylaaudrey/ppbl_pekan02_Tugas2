import 'package:flutter/material.dart';

import '../pages/beranda_page.dart';
import '../pages/laporan_page.dart';
import '../pages/detail_laporan_page.dart';
import '../pages/mitigasi_page.dart';
import '../pages/profil_page.dart';

class AppRoutes {
  static const String beranda = '/beranda';
  static const String laporan = '/laporan';
  static const String detailLaporan = '/detail-laporan';
  static const String mitigasi = '/mitigasi';
  static const String profil = '/profil';

  static Map<String, WidgetBuilder> get routes {
    return {
      beranda: (context) => const BerandaPage(),
      laporan: (context) => const LaporanPage(),
      mitigasi: (context) => const MitigasiPage(),
      profil: (context) => const ProfilPage(),
    };
  }

  static Route<dynamic>? onGenerateRoute(
    RouteSettings settings,
  ) {
    if (settings.name == detailLaporan) {
      final data = settings.arguments as Map<String, String>;

      return MaterialPageRoute(
        builder: (context) {
          return DetailLaporanPage(data: data);
        },
      );
    }

    return null;
  }
}