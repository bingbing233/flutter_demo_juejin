import 'package:flutter/material.dart';
import 'package:flutter_juejin/common/common_widgets.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FindPageState();
  }
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const SearchField(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _Banner(),
            const MyDivider(),
            _Tab(),
            const MyDivider(),
            _ImageTab(),
            const MyDivider(),
            _LogoTab(),
            const MyDivider()
          ],
        ),
      ),
    );
  }

}

class _Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 160,
      child: PageView(
        children: const <Widget>[
          Image(image: AssetImage("assets/1.jpg"), fit: BoxFit.fill,),
          Image(image: AssetImage("assets/2.jpg"), fit: BoxFit.fill),
          Image(image: AssetImage("assets/girl.png"), fit: BoxFit.fill,),
        ],
      ),
    );
  }

}

class _Tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(Icons.person, color: Colors.blueAccent,),
              Icon(Icons.topic, color: Colors.orange,),
              Icon(Icons.text_format, color: Colors.deepOrangeAccent,),
              Icon(Icons.local_activity_rounded, color: Colors.yellow),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text("招聘"),
              Text("话题"),
              Text("字学"),
              Text("活动"),
            ],
          )
        ],
      ),
    );
  }

}

class _ImageTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset("assets/1.jpg",height: 80,width: 180,),
        Image.asset("assets/2.jpg",height: 80,width: 180,)
      ],
    );
  }

}

class _LogoTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("推荐技术团队"),
              Text("全部技术团队>",style:TextStyle(color: Colors.blue) ,)
            ],
          ),
          SingleChildScrollView(
            scrollDirection:Axis.horizontal ,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("assets/girl.png",height: 100,width: 100,fit:BoxFit.fill ,),
                ),
                const SizedBox(width: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("assets/girl.png",height: 100,width: 100,fit:BoxFit.fill ,),
                ),
                const SizedBox(width: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("assets/girl.png",height: 100,width: 100,fit:BoxFit.fill ,),
                ),
                const SizedBox(width: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("assets/girl.png",height: 100,width: 100,fit:BoxFit.fill ,),
                ),
                const SizedBox(width: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("assets/girl.png",height: 100,width: 100,fit:BoxFit.fill ,),
                ),
                const SizedBox(width: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("assets/girl.png",height: 100,width: 100,fit:BoxFit.fill ,),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  
}