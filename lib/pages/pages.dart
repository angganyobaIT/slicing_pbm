import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  final String username;
  const MyWidget({super.key, required this.username});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  DateTime tanggalSekarang = DateTime(2026,4,17);
  Future <void> _pilihTanggal(BuildContext context) async{
    final DateTime? tanggalDipilih = await showDatePicker(
      context: context,
      firstDate: DateTime(2026, 1, 1),
      lastDate: DateTime(2045, 1, 1)
    );
    if (tanggalDipilih != null){
      setState(() {
        tanggalSekarang = tanggalDipilih;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        
        children: [
          Column(
            children: [
              Text('welcome, ${widget.username} !'),
              Text('$tanggalSekarang'),
              ElevatedButton(onPressed:()=>{
                  _pilihTanggal(context)
              } , child: Text("Pilih Tanggal"))
            ],
          ),
        ],
      ),
    );
  }
}