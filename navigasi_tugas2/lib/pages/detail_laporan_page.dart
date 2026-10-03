import 'package:flutter/material.dart';

class DetailLaporanPage extends StatelessWidget {
  final Map<String, String> data;

  const DetailLaporanPage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Laporan'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Icon(
              Icons.warning,
              size: 60,
              color: Colors.orange,
            ),

            const SizedBox(height: 20),

            Text(
              data['judul']!,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              '📍 ${data['lokasi']}',
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 8),

            Text(
              '📅 ${data['tanggal']}',
              style: const TextStyle(fontSize: 16),
            ),

            const Divider(height: 30),

            const Text(
              'Deskripsi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              data['deskripsi']!,
              style: const TextStyle(
                fontSize: 15,
                height: 1.5,
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton.icon(
                onPressed: () {

                  Navigator.pop(context);

                },

                icon: const Icon(Icons.arrow_back),

                label: const Text(
                  'Kembali',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}