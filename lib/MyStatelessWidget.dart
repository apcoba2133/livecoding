import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('BAHRUR ROCHIM(GANJIL)'),
            SizedBox(height: 20),
            Text(getStudentInfo(9)), // Ganti angka dengan nomor absen mahasiswa
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan logika saat tombol ditekan
        },
        child: Icon(Icons.add),
      ),
    );
  }

  String getStudentInfo(int absen) {
    if (absen % 2 == 0) {
      return 'Mahasiswa Genap';
    } else {
      return 'Mahasiswa Ganjil';
    }
  }
}
