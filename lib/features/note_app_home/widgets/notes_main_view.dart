import 'package:flutter/material.dart';

import 'individual_notes_widget.dart';

class NotesMainView extends StatefulWidget {
  const NotesMainView({super.key, this.tagName});
  final String? tagName;

  @override
  State<NotesMainView> createState() => _NotesMainViewState();
}

class _NotesMainViewState extends State<NotesMainView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("tagname ${widget.tagName}");
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50, top: 10),
      child: GridView.builder(
        itemCount: 20,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: (size.width - (size.width*0.1) ) / 8,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ),
          itemBuilder: (context, index){
            return IndividualNoteWidget(index: index,);
          }
      ),
    );
  }
}
