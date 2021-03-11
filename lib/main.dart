import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Bottom(),
  debugShowCheckedModeBanner: false,
));

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> with TickerProviderStateMixin{
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('लप्धान्ग',
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.white),),),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child:CircleAvatar(
                backgroundImage: AssetImage('images/logo.jpg'),
                  radius: 120.0,
      ),
              ),
              Text('Nepal Education Board', textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 130,
                        width: 100,
                        child: Image.asset('images/noti.png',),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        child:
                        Image.asset('images/form.jpg'),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('images/news.png')
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Notification', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                      Text('Forms',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                      Text('News', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                    ],
                  ),

              ),
              SizedBox(
                height: 10,
              ),
            SizedBox(
              height: 20,
            ),
              Container(
                color:
                Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset('images/neb.png'),
                    Text('Form fill up Notice!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black ),),

                  ],
                ),

              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset('images/neb.png'),
                    Text('Form fill up Notice!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black ),),

                  ],
                ),

              ),
            ],


          ),
          Center(child: Text('Notification')),
          Center(child: Text('Forms')),
          Text('Profile'),
        ],
      ),
      bottomNavigationBar:
      TabBar(
      controller: tabController,
      labelColor: Colors.black,
      tabs: <Widget>[
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.notifications)),
        Tab(icon: Icon(Icons.format_align_center)),
        Tab(icon: Icon(Icons.person)),
],
    ),

    );

  }

}








