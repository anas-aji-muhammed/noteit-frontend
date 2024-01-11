import 'package:flutter/material.dart';
import 'package:note_it/features/note_app_home/screen/note_app_home_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1200
      ),

      child: NotesAppHomePage(),
    );
  }
}
