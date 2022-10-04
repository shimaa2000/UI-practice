import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Practice1 extends StatefulWidget {
  const Practice1({Key? key}) : super(key: key);

  @override
  _Practice1State createState() => _Practice1State();
}

class _Practice1State extends State<Practice1> {
  @override
  Widget build(BuildContext context, ) {
    Container container(
        {required double height, required IconData icon, required String number, required String text, required Color color}){
      return Container(
          decoration: BoxDecoration(
            color: color,

            borderRadius: BorderRadius.circular(20),
          ),
        width: 160,
        height: height,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon,color: Colors.black,),
            Text(number,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text(text,style: TextStyle(color: Colors.black54,fontSize: 20),),
          ],
        )
      );
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(
              'https://www.tutorialkart.com/img/hummingbird.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
        leading: Transform.rotate(
          angle: 270 * math.pi / 180,
          child: Icon(
            Icons.filter_list,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
                  Column(

                    children: [
                      Text(
                        'Hello Daived',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Welcome back !',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.settings),),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Column(

                children: [
                container(height: 170,icon: Icons.model_training, number: '230K', text: 'sales', color: Colors.indigoAccent),
                SizedBox(height: 20,),
                container(height: 250,icon: Icons.model_training, number: '230K', text: 'sales', color: Colors.deepPurpleAccent)
              ],),
              Column(children: [
                container(height: 250,icon: Icons.model_training, number: '230K', text: 'sales', color: Colors.blueGrey),
                SizedBox(height: 20,),
                container(height: 170,icon: Icons.model_training, number: '230K', text: 'sales', color: Colors.pinkAccent)
              ],)
            ],),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
