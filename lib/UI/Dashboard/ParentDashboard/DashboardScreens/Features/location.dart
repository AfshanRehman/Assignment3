import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();

}

class _LocationState extends State<Location> {
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