import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
              label: Text('Enter Room ID'),
              fillColor: Colors.grey.shade400,
              filled: true,
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
        ElevatedButton(onPressed: () {
          
        }, child: Text('Start Metting'))
      ],
    );
  }
}
