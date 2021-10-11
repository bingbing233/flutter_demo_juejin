import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class MinePage extends StatelessWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "我",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: const <Widget>[
          Divider(thickness: 8, color: Colors.black12,),
          _MyHeader(),
          Divider(thickness: 8, color: Colors.black12,),
          _MyItem(icon: Icon(Icons.notifications, color: Colors.blue,),
              title: "消息中心",
              suffixText: ""),
          Divider(),
          _MyItem(icon: Icon(Icons.edit, color: Colors.green,),
              title: "创作者中心",
              suffixText: ""),
          Divider()
        ],
      ),
    );
  }
}


///顶部header部分
class _MyHeader extends StatelessWidget {
  const _MyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          SizedBox(width: 20,),
          CircleAvatar(
            backgroundImage: AssetImage("assets/avatar.jpg"), radius: 22,),
          SizedBox(width: 20,),
          Text("Liangbinghao", style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),)
        ],
      ), padding: const EdgeInsets.all(20),
    );
  }
}

///其他item
class _MyItem extends StatelessWidget {

  final Icon icon;
  final String title;
  final String suffixText;

  const _MyItem(
      {Key? key, required this.icon, required this.title, required this.suffixText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 18,),
            icon,
            SizedBox(width: 18,),
            Text(title, style: TextStyle(fontSize: 13))
          ],
        ),
      ),
    );
  }

}
