import 'package:avatar_glow/avatar_glow.dart';
import 'package:cms/UI/Dashboard/ChildDashboard/GridDashboard.dart';
import 'package:cms/UI/Dashboard/ChildDashboard/Settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ChildDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        //Color(0xff453658),//
        automaticallyImplyLeading: false,
        title: Text("Child Dashboard"),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              })
        ],
      ),
      body: 

      
      Column(
        children: [
        /*AvatarGlow(
            glowColor: Colors.blue,
            endRadius: 70.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                //backgroundColor: Colors.blue[200],
                child:
                //     // Image.asset("assets/images/logo.png" ,height: 120,),

                 Lottie.network(
                    "https://assets7.lottiefiles.com/packages/lf20_SgQLT9.json"),
                radius: 55.0,
              ),
              
            ),
          ),*/


     Image.asset("assets/images/logo.png" ,height: 120,),

          Text(
            "CMS",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Your Parents are keeping you safe",
            style: TextStyle(fontSize: 20),
          ),
          Expanded(child: GridDashboard())
        ],
      ),
      );
  
  }
}
