import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              Divider(
                thickness: 8,
                color: Colors.black12,
              ),
              _MyHeader(),
              Divider(
                thickness: 8,
                color: Colors.black12,
              ),
              _MyItem(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.blue,
                  ),
                  title: "消息中心",
                  suffixText: ""),
              Divider(),
              _MyItem(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.green,
                  ),
                  title: "创作者中心",
                  suffixText: ""),
              Divider(),
              _MyItem(
                  icon: Icon(
                    Icons.check_box,
                    color: Colors.blue,
                  ),
                  title: "签到赢好礼",
                  suffixText: ""),
              Divider(),
              _MyItem(
                  icon: Icon(
                    Icons.thumb_up,
                    color: Colors.green,
                  ),
                  title: "我赞过的",
                  suffixText: ""),
              Divider(),
              _MyItem(
                  icon: Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  title: "收藏集",
                  suffixText: ""),
              Divider(),
              _MyItem(
                  icon: Icon(
                    Icons.shopping_basket,
                    color: Colors.orange,
                  ),
                  title: "已购",
                  suffixText: ""),
              Divider(
                thickness: 8,
                color: Colors.black12,
              ),
              _MyItem(icon: Icon(Icons.remove_red_eye,color: Colors.grey,), title: "阅读过的文章", suffixText: ""),
              Divider(),
              _MyItem(icon: Icon(Icons.label,color: Colors.grey,), title: "标签管理", suffixText: ""),
              Divider(
                thickness: 8,
                color: Colors.black12,
              ),
              _MyItem(icon: Icon(Icons.feedback,color: Colors.grey,), title: "意见反馈", suffixText: ""),
              Divider(),
              _MyItem(icon: Icon(Icons.nightlight_round,color: Colors.grey,), title: "深色模式", suffixText: ""),
              Divider(),
              _MyItem(icon: Icon(Icons.settings,color: Colors.grey,), title: "设置", suffixText: ""),
              Divider(),
            ],
          ),
        ));
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
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/avatar.jpg"),
            radius: 22,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Liangbinghao",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
      padding: const EdgeInsets.all(18),
    );
  }
}

///其他item
class _MyItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final String suffixText;

  const _MyItem(
      {Key? key,
      required this.icon,
      required this.title,
      required this.suffixText})
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
            const SizedBox(
              width: 18,
            ),
            icon,
            const SizedBox(
              width: 18,
            ),
            Text(title,
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w800))
          ],
        ),
      ),
    );
  }
}
