import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../pages/pages.dart';

void main() {
  runApp(
    DevicePreview(enabled: !kReleaseMode, 
    builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _usernameController = TextEditingController();
  bool _showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: .start,
            crossAxisAlignment: .center,
            spacing: 20,
            children: [
              Container(
                height: 300,
                width:300,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(10),
                child: Image.asset("asset/image1.png"),
              ),
              Row(
                mainAxisAlignment: .start,
                children: [
                  Text("Login", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                ],
              ),
              TextField(controller: _usernameController ,
                decoration: InputDecoration(
                  hintText: "username"
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "password",
                  suffixIcon: Icon(Icons.visibility),
                ),
                obscureText: true,
                obscuringCharacter: "*",

              ),
              Row(
                children: [
                  Expanded(child: FilledButton(
                    onPressed: (){
                    }, 
                    child: Text("Login"))),
                   
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
