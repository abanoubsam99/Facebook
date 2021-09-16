import 'package:facebook/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                forceElevated: innerBoxIsScrolled,
                backgroundColor: Colors.white,
                title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Image.network("https://logos-world.net/wp-content/uploads/2020/04/Facebook-Logo-2019-present.jpg",width: 130,height: 90,),
                  Row(children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.1),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(child: Icon(Icons.search,color: Colors.black,)),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(child: Icon(Icons.chat_outlined,color: Colors.black,)),
                    ),
                    ],)
                ],),
                floating: true,
                pinned: true,
                automaticallyImplyLeading: false, // Don't show the leading butto
                snap:
                true, // <--- this is required if I want the application bar to show when I scroll up
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(39.5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(border:Border(bottom: BorderSide(color: Theme.of(context).accentColor,width: 2.0,style: BorderStyle.solid))),
                      child: TabBar(
                        tabs:[
                          Icon(Icons.home,size: 35,),
                          Icon(Icons.ondemand_video,size: 35,),
                          Icon(Icons.group_rounded,size: 35,),
                          Icon(Icons.person_pin,size: 35,),
                          Icon(Icons.notifications,size: 35,),
                          Icon(Icons.menu,size: 35,),

                        ],
                        labelColor: Theme.of(context).primaryColor,
                        indicatorColor:Theme.of(context).primaryColor,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 2.5,
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: new TabBarView(
            children: <Widget>[HomeScreen(),HomeScreen(),HomeScreen(),HomeScreen(),HomeScreen(),HomeScreen()],
          ),
        ),
      ),
    );
  }
}
