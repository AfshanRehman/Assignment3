import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Locationhistory extends StatefulWidget {
  @override
  _LocationhistoryState createState() => _LocationhistoryState();

}

class _LocationhistoryState extends State<Locationhistory> {
      GoogleMapController mycontroller;
        Set <Marker> _marker = HashSet<Marker>();
        // map controller variable  declare martker 

  @override
void initState(){
// to initialize marker on the map 
super.initState();


_marker.add(// add marker


Marker// map component 

(
markerId: MarkerId("id 1"),
position: LatLng(33.6844,73.0479 ),
onTap: () { showModalBottomSheet(context: context,
 builder: (builder){

return Container(
   decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
    
child:
Column(

children: [
    
SizedBox(height:30),

Text("Location History",style: TextStyle(

color:Colors.indigo,
fontSize: 15.0,
fontWeight: FontWeight.bold,


),
textAlign: TextAlign.center,
),

ListTile(

title:Text(" 12.pm"),
subtitle: Text("Comsats"),


),
ListTile(

title:Text(" 2.pm"),
subtitle: Text("Supper Market"),



),
ListTile(

title:Text(" 4.pm"),
subtitle: Text("Savour Foods"),




),
/*
Text("12.pm",

style: TextStyle(color: Colors.grey,
fontSize: 20.0,),
),
Text("Comsats",

style: TextStyle(color: Colors.blue,
fontSize: 20.0,),
),
SizedBox(height:5),


Text("2.0.pm",

style: TextStyle(color: Colors.grey,
fontSize: 20.0,),
),
Text("Super Market",

style: TextStyle(color: Colors.blue,
fontSize: 20.0,),
),
SizedBox(height:5),

Text("4.0 .pm",

style: TextStyle(color: Colors.grey,
fontSize: 20.0,),
),
Text("Savour Blue Area",

style: TextStyle(color: Colors.blue,
fontSize: 20.0,),
),

*/
],

),
);
 });
},






infoWindow: InfoWindow(// add marker description styling marker 

  title:"Islamabd",
  snippet:"User Current Location",

),




),
);

}
  @override
  Widget build(BuildContext context) {
      CameraPosition initialCameraPosition =  CameraPosition(
  target: LatLng(33.6844,73.0479 ),
 zoom:20.0,
      );
    return MaterialApp(
            debugShowCheckedModeBanner:false ,

    home:
    Scaffold(
 

      body:   
 
    

GoogleMap(
onMapCreated:(controller) {
  setState(() {
    mycontroller = controller;




  });

},


initialCameraPosition:initialCameraPosition,
/*markers: Set.from( myMarker),
onTap: _handleTap,
*/

markers: Set.from(_marker),





),

),




  

    


    );
    
    
    
  }
}