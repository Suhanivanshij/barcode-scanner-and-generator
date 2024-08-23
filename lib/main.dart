import 'package:flutter/material.dart';
import 'package:qr_code_scanner_and_generator/generate_qr_code.dart';
import 'package:qr_code_scanner_and_generator/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner And Generator',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Scanner And Generator"),backgroundColor: Colors.lightBlueAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed:(){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQrCode()));
              });
            } , child: Text("scan QR code")),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenerateQrCode()));
              });
            }, child: Text("Generate QR Code"))
          ],
        ),
      ),
    );
  }
}
