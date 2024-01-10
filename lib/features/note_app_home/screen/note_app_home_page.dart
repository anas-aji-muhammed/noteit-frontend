import 'package:flutter/material.dart';

class NotesAppHomePage extends StatefulWidget {
  const NotesAppHomePage({super.key});

  @override
  State<NotesAppHomePage> createState() => _NotesAppHomePageState();
}

class _NotesAppHomePageState extends State<NotesAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Home"),)
    );
  }
}
