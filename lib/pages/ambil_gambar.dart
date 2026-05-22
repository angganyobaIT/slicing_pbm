import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class AmbilGambarScreen extends StatefulWidget {
  const AmbilGambarScreen({super.key});

  @override
  State<AmbilGambarScreen> createState() => _AmbilGambarScreenState();
}

class _AmbilGambarScreenState extends State<AmbilGambarScreen> {
  File? gambar;
  Future ambil(ImageSource sumber)async{
    final gbr = await ImagePicker().pickImage(source: sumber);
    if(gbr!=null){
      setState(() {
        gambar = File(gbr.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ambil Gambar"),),
      body: Center(
        child: Column(
          children: [
            gambar != null? Image.file(gambar!, height: 200, width: 200,):
            Text("Tidak Ada Gambar"),
            // KAMERA
            ElevatedButton(onPressed: ()=>ambil(ImageSource.camera), child: Text("Kamera")),

            // GALERI
            ElevatedButton(onPressed: ()=>ambil(ImageSource.gallery), child: Text("Galeri")),
          ],
        ),
      ),
    );
  }
}