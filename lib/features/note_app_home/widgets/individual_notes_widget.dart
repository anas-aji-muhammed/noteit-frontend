import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IndividualNoteWidget extends StatefulWidget {
  const IndividualNoteWidget({super.key, required this.index});
  final int index;
  @override
  State<IndividualNoteWidget> createState() => _IndividualNoteWidgetState();
}

class _IndividualNoteWidgetState extends State<IndividualNoteWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(widget.index!=0){
          print("note details");
        }
        else{
            context.go("/editor");
        }
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                width: .8,
                color: Colors.black26
            ),
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: (widget.index!=0)?Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Title", style: TextStyle(fontWeight: FontWeight.bold)),
            RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: 'Hello ',
                style: DefaultTextStyle.of(context).style,
                children:  <TextSpan>[
                  TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' world!'),
                  TextSpan(text: ' index ${widget.index}'),
                ],
              ),
            )

          ],
        )
        : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.add, size: 100,),
            RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: 'Add ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(text: 'Note', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
