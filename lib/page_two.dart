import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {

  int currentIndex = 2;
  List <Widget> tabs = [
    one(), //referenced function
    Center(child: Text("Search"),),
    Center(child: Text("Home"),),
    Center(child: Text("Activities"),),
    Center(child: Text("Profile"),),
  ];

  static Center center = Center(child: Text("Camera"),);
  static Center one(){
    return Center(child: Text("Camera"),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
            //backgroundColor: Colors.orange,
            label: 'Camera'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              //backgroundColor: Colors.red,
              label: 'Search'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              //backgroundColor: Colors.blue,
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined),
              //backgroundColor: Colors.green,
              label: 'Activities'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              backgroundColor: Colors.yellow,
              label: 'Profile'
          ),
        ],
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: tabs[currentIndex] ,
    );
  }
}
