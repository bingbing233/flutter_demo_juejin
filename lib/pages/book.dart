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
        padding: EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset("assets/dog.jpg",width: 80,),
            ),
            SizedBox(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("计算机是怎么运行的：从根理上解决计算机",style: TextStyle(fontSize: 20),textAlign: TextAlign.left,),
                  Text("小孩子4919"),
                  Text("22小节 · 1938人已购买"),
                ],
              ),
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
    return const Center(
      child: Text("已购"),
    );
  }
}
