import 'package:flutter/material.dart';

///搜索框
class SearchField extends StatelessWidget{
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: const Color.fromARGB(196, 224, 224, 224),
      child: Row(
        children: const <Widget>[
          Icon(Icons.search,color: Colors.white70,size: 20,),
          Text("搜索掘金",style: TextStyle(color: Colors.white70,fontSize: 15),)
        ],
      ),
    );
  }

}
///分割线
class MyDivider extends StatelessWidget{
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 8,
      color: Colors.black12,
    );
  }

}