import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<int> oddNumbers = [];

  @override
  void initState() {
    super.initState();
    generateOddNumbers();
  }

  void generateOddNumbers() {
    for (int i = 1; i <= 30; i += 2) {
      oddNumbers.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BAHRUR ROCHIM - Absen 9'),
        elevation: 0, // Menghilangkan bayangan pada AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Angka Ganjil dari 0 hingga 30:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: oddNumbers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    oddNumbers[index].toString(),
                    style: TextStyle(fontSize: 18),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          setState(() {
            generateOddNumbers();
          });
        },
        child: Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
