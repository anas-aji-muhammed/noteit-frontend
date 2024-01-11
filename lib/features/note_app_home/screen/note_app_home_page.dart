import 'package:flutter/material.dart';

import '../widgets/notes_main_view.dart';
import '../widgets/tags_panel.dart';

class NotesAppHomePage extends StatefulWidget {
  const NotesAppHomePage({super.key});

  @override
  State<NotesAppHomePage> createState() => _NotesAppHomePageState();
}

class _NotesAppHomePageState extends State<NotesAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
              child: TagsPanel()
          ),
          VerticalDivider(
            width: .9,
            color: Colors.black45,
          ),

          Expanded(
              flex: 9,
              child: NotesMainView()
          ),
        ],
      )
    );
  }
}
