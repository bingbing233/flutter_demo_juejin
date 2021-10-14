import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BookState();
  }
}

class _BookState extends State<BookPage> {
  final List<String> _tabValue = ["全部", "已购"];
  final TabController _tabController =
  TabController(length: 2, vsync: ScrollableState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          tabs: _tabValue.map((e) => Tab(child: Text(e),)).toList(),
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: <Widget>[_AllBookPage(), _HaveBoughtPage()],
        controller: _tabController,
      ),
    );
  }
}

///全部页
class _AllBookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _BookItem(),
          _BookItem(),
          _BookItem(),
          _BookItem(),
          _BookItem(),
          _BookItem(),
          _BookItem(),
          _BookItem(),
        ],
      ),
    );
  }
}

class _BookItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(8),
                ),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/dog.jpg")
                )
              ),
              child: const SizedBox(width: 70,height: 100,),
            ),
            SizedBox(
              width: 230,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text("计算机是怎么运行的：从根理上解决计算机",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),textAlign: TextAlign.left,),
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(text: "小孩子4919 ",style:  TextStyle(fontSize: 13,fontWeight: FontWeight.w500)),
                      TextSpan(text: "LV3",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w500,color: Colors.white,backgroundColor: Colors.blue,)),
                    ]
                  )),
                  Text("22小节 · 1938人已购买",style: TextStyle(fontSize: 13,color: Colors.grey),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(148, 213, 232, 243)
              ),
              child: const Text("￥29.9",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 12),),
            )
          ],
        ),
      ),
    );
  }

}

///已购页
class _HaveBoughtPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.book_outlined,color: Colors.blue,size: 120,),
          Text("暂无已购小册",style: TextStyle(color: Colors.grey),),
        ],
      )
    );
  }
}
