
import 'package:cms/UI/Dashboard/ParentDashboard/ParentDashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'appstatistic.dart';
import 'call_log_view.dart';
import 'contact.dart';
import 'geofencing.dart';
import 'installedapp.dart';
import 'location.dart';
import 'locationhistory.dart';
import 'sms.dart';
class Features extends StatefulWidget {
  
  @override
  _FeaturesState createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


 debugShowCheckedModeBanner: false,

 /* bottom: TabBar(
                                      isScrollable: true,
                                      tabs: [
                                        Tab(child: Text('Calls')),
                                        Tab(child: Text('Messages')),
                                        Tab(child: Text('Contacts')),
                                        Tab(child: Text('Apps')),
                                        Tab(child: Text('Apps Statistics')),
                                        Tab(child: Text('Location')),
                                       Tab(child: Text('Location History')),
                                        Tab(child: Text('Geofencing')),



                                      ],
                                    )

      ),
body:
TabBarView(
                                    children: [
                                      CallLogView(),
                                      Sms(),
                                      Contact(),
                                      Installapp(),
                                      Stats(),
                                      Location(),
                                      Locationhistory(),
                                      Geofence(),
                                      
                                    ],
                                  ),

      
    );*/
      


      home: Column(
                        children: <Widget>[
                          
                          Expanded(
                            child: Container(
                              color: Colors.indigo,
                              child:
                           

                            
                               DefaultTabController(
                                length: 8,
                                child: Scaffold( 

 appBar: AppBar(

        bottom: TabBar(
                                      isScrollable: true,
                                      tabs: [
                                        Tab(child: Text('Location')),
                                        Tab(child: Text('Location History')),
                                        Tab(child: Text('Call log')),
                                        Tab(child: Text('Sms')),
                                        Tab(child: Text('Contact')),
                                        Tab(child: Text('Install App')),
                                       Tab(child: Text('App Statistic')),
                                        Tab(child: Text('Geofencing')),



                                      ],
                                    ),

                                    title:Text("Features"),
                                    centerTitle: true,
                                    leading: IconButton(
                                    icon: Icon(Icons.arrow_back),
                                    onPressed: (
                                      
                                    ) {

Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ParentDashboard()));


                                    }),
                                    

      ),
body:
TabBarView(
                                    children: [
                                     Location(),
                                     Locationhistory(),
                                      CallLogView(),
                                      Sms(),
                                      Contact(),
                                      Installapp(),
                                      Stats(),
                                      Geofence(),
                                      
                                    ],
                                  ),

      
    ),
      ),




                        
                                    
                              
                            
                              
                            
                            ),
    ),
                        ],
   ),
                          );
    
                   

  }
}