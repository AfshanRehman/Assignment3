import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
 




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
      
        body:  /*SafeArea(
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 180,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,*/
                      Column(
                        children: [
                                                    Expanded(
                            child: Container(
                              child: ListView(
                                 children:[
           
                                     ListTile(
                                     leading:  /*ImageIcon(
    AssetImage('assets/images/googleicon.png'),
        color: Colors.red,

  ) ,*/
  new Tab(icon: new Image.asset("assets/images/googleicon.png")),//
  //for using widget use tab in case you want to add image as icon and place inside widget property of icon 

                                      title:
                                      Text('Google',
                                       style: TextStyle(color:Colors.blueAccent),
                                      
                                      ),
                                      subtitle: Text("1 hr 20 min",


                                       style: TextStyle(color:Colors.indigo),

                                      ),
                                     
                                    ),



                                     ListTile(
                                     leading: /* ImageIcon(
    AssetImage('assets/images/googleicon.png'),
        color: Colors.red,

  ) ,*/  new Tab(icon: new Image.asset("assets/images/youtube.png")),//

                                      title:
                                      Text('Youtube',
                                      
                                      style: TextStyle(color:Colors.blueAccent)),

  subtitle: Text("2 hr 20 min",


                                       style: TextStyle(color:Colors.indigo),
  ),
                                     
                                    ),
                                    
                                     ListTile(
                                     leading:  /*ImageIcon(
    AssetImage('assets/images/wahtsapp.png'),
        color: Colors.green,
),*/  new Tab(icon: new Image.asset("assets/images/wahtsapp.png")),//


                                      title:
                                      Text('Whatsapp',
                                       style: TextStyle(color:Colors.blueAccent),),
                                       subtitle: Text("3 hr 30 min",


                                       style: TextStyle(color:Colors.indigo),
                                       ),
                                    ),
                                    
                                     ListTile(

                                     leading: 

                                     /*ImageIcon(
    AssetImage('assets/images/googleicon.png'),
        color: Colors.blue,

  ) ,*/
new Tab(icon: new Image.asset("assets/images/facebook.png")),

                                      title:
                                      Text('Facebook',
                                       style: TextStyle(color:Colors.blueAccent),
                                      
                                      ),

                                        subtitle: Text("2 hr 40 min",


                                       style: TextStyle(color:Colors.indigo),
                                        ),
                                     
                                    ),
                                    
                                     ListTile(
                                     leading:  /*ImageIcon(
    AssetImage('assets/images/googleicon.png'),
        color: Colors.pink,

  ) ,*/new Tab(icon: new Image.asset("assets/images/instagram.jpg")),

                                      title:
                                      Text('Instagram',
                                       style: TextStyle(color:Colors.blueAccent),),
                                        subtitle: Text("1 hr 10 min",


                                       style: TextStyle(color:Colors.indigo),
                                        ),
                                      
                                      ),
                                     
                                    

                                      ListTile(
                                     leading:  /*ImageIcon(
    AssetImage('assets/images/googleicon.png'),
        color: Colors.pink,

  ) ,*/new Tab(icon: new Image.asset("assets/images/messenger.png")),

                                      title:
                                      Text('Messenger',
                                      
                                      
                                       style: TextStyle(color:Colors.blueAccent),
                                      
                                      ),


                                        subtitle: Text("3 hr 20 min",


                                       style: TextStyle(color:Colors.indigo),
                                        ),
                                     
                                    ),


],
                                    ),
                                    
                                  ),
                                
                           
                                                    )
                        ],
                          ),            
                 
        );
  }
}