import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Practice2 extends StatelessWidget {
  const Practice2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    String link = 'https://www.tutorialkart.com/img/hummingbird.png';
    return new Scaffold(
      key: key,
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://www.tutorialkart.com/img/hummingbird.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mr.cinema3d ',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Icon(
                      Icons.verified_rounded,
                      color: Colors.lightBlueAccent,
                      size: 25,
                    )
                  ],
                ),
                Text('@Mr.cinema3d',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 15,
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '''Visual artist inspired by feelings,
surroundings and everything in between.
              ''',
              style: TextStyle(color: Colors.white38, fontSize: 15),
              textAlign: TextAlign.start,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: link,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.white38),
                  borderRadius: BorderRadius.circular(15),
                ),
                labelStyle: TextStyle(color: Colors.white38),
                suffixIcon: IconButton(
                  onPressed: () {
                    Clipboard.setData(new ClipboardData(text: link));
                    key.currentState!.showSnackBar(new SnackBar(
                      content: new Text("Copied to Clipboard",
                          style: TextStyle(color: Colors.white38)),
                    ));
                  },
                  icon: Icon(Icons.copy, color: Colors.white38),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  Text('87.5K',
                      style: TextStyle(fontSize: 20, color: Colors.white70)),
                  Text('453',
                      style: TextStyle(fontSize: 20, color: Colors.white70)),
                  Row(
                    children: [
                      Icon(Icons.view_headline_outlined, color: Colors.white70),
                      Text('7.05', style: TextStyle(fontSize: 20,
                          color: Colors.white70)),
                    ],
                  ),
                ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Followers', style: TextStyle(color: Colors.white70)),
                    Text('Following', style: TextStyle(color: Colors.white70)),
                    Text(
                        'Floor Price', style: TextStyle(color: Colors.white70)),
                  ],),
              ],),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Created', style: TextStyle(color: Colors.white70)),
                Text('Collection', style: TextStyle(color: Colors.white70)),
                Text(
                    'Owned', style: TextStyle(color: Colors.white70)),
              ],),
            SizedBox(height: 7.5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(width: 65,
                height: 2, color: Colors.white,), Container(width: 65,
                height: 2, color: Colors.white,), Container(width: 65,
                height: 2, color: Colors.white,),
            ],),
            SizedBox(height: 30,),
            Container(
              width: 250,
              height: 150,
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.tutorialkart.com/img/hummingbird.png',
                  ),
                  fit: BoxFit.fill,
                ),
             borderRadius: BorderRadius.circular(20),
            ),
        ),
        ],
    )],
    )
    ,
    ),
      )
    ,
    );
  }
}
