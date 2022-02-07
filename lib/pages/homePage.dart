import 'package:chatty/theme.dart';
import 'package:chatty/widget/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add,size: 28),
          backgroundColor: greenColor,
        
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/avatar.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Sabriana Cerpenter',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                SizedBox(height: 8),
                Text('Travel FreeLancer',
                    style: TextStyle(color: lightBlueColor, fontSize: 16)),
                SizedBox(height: 40),
                
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Friends', style: titleStyle),
                            SizedBox(height: 16),
                            ChatTile(imageUrl: 'assets/images/friend1.png',name: "Tegar",text:"Sorry , i'am not ready now",time: 'now',unread: true,),
                            ChatTile(imageUrl: 'assets/images/friend2.png',name: "Silvi",text:"I saw it clearly and mig..",time: '2:30',unread: false,),
                          ])),
                          SizedBox(height: 30,),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('Group', style: titleStyle),
                              ChatTile(imageUrl: 'assets/images/group.png',name: "Jakarta Fair",text:"Why does everyone co..",time: '11:33',unread: false,),
                              ChatTile(imageUrl: 'assets/images/group2.png',name: "Angga",text:"Here we can go",time: '9:52',unread: true,),
                              ChatTile(imageUrl: 'assets/images/group3.png',name: "Bentley",text:"The car which does not..",time: '7:21',unread: true,),
                            ],
          
                        )
                    ],
                  ),
                  
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40))),
                )
              ],
            ),
          ),
        )));
  }
}
