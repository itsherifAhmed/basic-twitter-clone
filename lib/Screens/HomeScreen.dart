import 'package:flutter/material.dart';
import 'package:zoomfoyuee/view/FeedScreen.dart';
import 'package:zoomfoyuee/view/dserachScreen.dart';
import 'package:zoomfoyuee/view/notificationScreen.dart';
import 'package:zoomfoyuee/view/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController =PageController(
    keepPage: true,
    initialPage: 0

  );

  List <Widget>_pages=
  [
    FeedScreen(),//0
    NotificationScreen(),//1
    SearchScreen(),//2
    ProfileScreen()//3
  ];
  int currentIndex=0;
void _onPageChanged(int index)
{
  setState(() {
    currentIndex=index;
  });
_pageController.jumpToPage(currentIndex);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(AssetImage("assets/stars.png")),
          )
        ],
        elevation: 20,

        title: Image.asset("assets/twitter.png"),
      ),
      drawer: Drawer(),
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: _onPageChanged,

      ),
      bottomNavigationBar: MyBottomNavBar(

        pageController:_pageController ,
        onpagechanged: _onPageChanged,
        index: currentIndex,

      ),



    );
  }
}


class MyBottomNavBar extends StatelessWidget {


  final PageController pageController;
  final Function (int index) onpagechanged;
  final int index;


  MyBottomNavBar({this.pageController, this.onpagechanged, this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: BottomAppBar(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(

                iconSize: 30,
                color: index==0?Colors.blue:Colors.green,
                onPressed: () {
                  onpagechanged(0);

                },

                icon: ImageIcon(AssetImage("assets/stars.png")),
              ),

              IconButton(

                iconSize: 30,
                color: index==1?Colors.blue:Colors.green,
                onPressed: () {
                  onpagechanged(1);

                },

                icon: ImageIcon(AssetImage("assets/stars.png")),
              ),

              IconButton(

                iconSize: 30,
                color: index==2?Colors.blue:Colors.green,
                onPressed: () {
                  onpagechanged(2);

                },

                icon: ImageIcon(AssetImage("assets/stars.png")),
              ),

              IconButton(

                iconSize: 30,
                color: index==3?Colors.blue:Colors.green,
                onPressed: () {
                  onpagechanged(3);

                },

                icon: ImageIcon(AssetImage("assets/stars.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

