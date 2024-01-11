import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TagsPanel extends StatefulWidget {
  const TagsPanel({super.key});

  @override
  State<TagsPanel> createState() => _TagsPanelState();
}

class _TagsPanelState extends State<TagsPanel> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            child: Text("Add Tag"),
          ),
          Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 20,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      onTap: (){
                        context.go("/tag/$index");
                      },
                      child: Container(
                        child: ListTile(
                          title: Text("$index"),
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black12,
                              width: 0.5
                            )
                          )
                        ),
                      ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
