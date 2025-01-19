import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World App'),
        ),
        body: const Center(
          child: HelloWorldWidget(),
        ),
      ),
    );
  }
}

class HelloWorldWidget extends StatefulWidget {
  const HelloWorldWidget({super.key});

  @override
  _HelloWorldWidgetState createState() => _HelloWorldWidgetState();
}

class _HelloWorldWidgetState extends State<HelloWorldWidget> {
  void _showMessage() {
    // Menampilkan pesan di konsol atau snack bar
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Tombol ditekan!"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Hello, World!',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20), // Jarak antara teks dan tombol
        ElevatedButton(
          onPressed: _showMessage,
          child: const Text('Tekan Saya'),
        ),
      ],
    );
  }
}
