import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cms/UI/Dashboard/ParentDashboard/DashboardScreens/AddChild.dart';
import 'package:cms/UI/Dashboard/ParentDashboard/DashboardScreens/Features/features.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Childlist extends StatefulWidget {
  @override
  _ChildlistState createState() => _ChildlistState();
}

class _ChildlistState extends State<Childlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(

      //),

      body: 
       Container(
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
                    ),
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
      
    ),
    );
  }
}