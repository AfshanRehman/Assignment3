
import 'package:avatar_glow/avatar_glow.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cms/UI/Dashboard/ParentDashboard/DashboardScreens/AddChild.dart';
import 'package:cms/UI/Dashboard/ParentDashboard/DashboardScreens/Features/features.dart';
import 'package:cms/UI/Dashboard/ParentDashboard/DashboardScreens/childlist.dart';
import 'package:cms/UI/Dashboard/ParentDashboard/DashboardScreens/notification.dart';
import 'package:cms/UI/OnBoardingScreens/SelectRole.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParentDashboard extends StatefulWidget {
  @override
  _ParentDashboardState createState() => _ParentDashboardState();
}

class _ParentDashboardState extends State<ParentDashboard> {
  int currentstate = 0;

  @override
  void initState() {
    super.initState();
    currentstate = 0;
  }

  final _pageOption =[

    Childlist(),
    Notices(),
   
  ];

  void changeScreen(int index) {
    setState(() {
      currentstate = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        // leading: IconButton(
        //     icon: Icon(
        //       Icons.dehaze_sharp,
        //       color: Colors.white,
        //     ),
        //     onPressed: () {}),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dashboard",
              style: TextStyle(),
            ),
            Text(
              "Parent",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BubbleBottomBar(
        backgroundColor: Colors.white,
        hasInk: false,
        hasNotch: true,
        opacity: 0.3,
        currentIndex: currentstate,
        onTap: changeScreen,
        elevation: 10,
        borderRadius: BorderRadius.circular(500),
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.pink,
              ),
              title: Text("MyChild")),
         
          BubbleBottomBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.notifications_none,
                color: Colors.blue,
              ),
              title: Text("Notices")),
          
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection("Users")
                    .doc(FirebaseAuth.instance.currentUser.uid)
                    .get(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snap) {
                  if (snap.hasData && snap.data != null) {
                    return UserAccountsDrawerHeader(
                        currentAccountPicture: AvatarGlow(
                          glowColor: Colors.blue[900],
                          endRadius: 90.0,
                          duration: Duration(milliseconds: 2000),
                          repeat: true,
                          showTwoGlows: true,
                          repeatPauseDuration: Duration(milliseconds: 100),
                          child: Material(
                            // Replace this child with your own
                            elevation: 8.0,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.blue[200],
                              child: Icon(Icons.person),
                              radius: 55.0,
                            ),
                          ),
                        ),
                        accountName: Text(snap.data.get("name")),
                        accountEmail: Text(snap.data.get("email")));
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
            ListTile(
              onTap: () {},
              title: Text("Profile"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text("Help"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
               Divider(),
            ListTile(
              onTap: () {},
              title: Text("Setting"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
             Divider(),
            ListTile(
              onTap: () {},
              title: Text("Faq"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            Divider(),
            Expanded(
              child: Container(),
            ),
            ListTile(
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SelectRole()),
                      (route) => false);
                },
                title: Text("Logout"),
                trailing: Icon(Icons.logout)),
            SizedBox(height: 30),
          ],
        ),
      ),
      body: _pageOption[currentstate],
    /* new  Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Keep your child secure!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 10,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(Icons.person),
                        ),
                        title: Text("Children"),
                        subtitle: Text("Add child"),
                        trailing: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddChildForm()));
                            }),
                      ),
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection("Users")
                          .doc(FirebaseAuth.instance.currentUser.uid)
                          .collection('Children')
                          .snapshots(),
                      builder:
                          (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasData && snapshot.data != null) {
                          return ListView(
                            children: snapshot.data.docs.map((doc) {
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.grey[200],
                                  child: Icon(Icons.person),
                                ),
                                title: Text(doc["name"]),
                                subtitle: Text(doc["email"]),
                                trailing: IconButton(
                                    icon: Icon(Icons.arrow_forward_ios_rounded),
                                    onPressed: (
                                      
                                    ) {

Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Features()));


                                    }),
                              );
                            }).toList(),
                          );
                        } else {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return Text("No Child added yet!");
                          }
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),*/
    );
  }
}

// Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//                   child: Column(
//                     children: [
//                       Center(
//                           child: Text(
//                         "Child List",
//                         style: TextStyle(fontSize: 34),
//                       )),
//                       ListTile(
//                         leading: Icon(Icons.person),
//                         title: Text("Hadia Khalid"),
//                         subtitle: Text("hadia@gmail.com"),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
