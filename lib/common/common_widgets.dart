import 'package:flutter/material.dart';

class SearchField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(196, 224, 224, 224),
      child: Row(
        children: <Widget>[
          Icon(Icons.search,color: Colors.white70,),
          Text("搜索掘金",style: TextStyle(color: Colors.white70),)
        ],
      ),
    );
  }

}