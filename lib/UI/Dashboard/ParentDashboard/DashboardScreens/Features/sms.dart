import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Sms extends StatefulWidget {
  @override
  _SmsState createState() => _SmsState();
}

class _SmsState extends State<Sms> {
 




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        /*appBar:AppBar(

      title: Text("Messages"),
        leading:
      IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Features();
                            },
                          ),
        ),*/
        body: /* SafeArea(
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 180,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 5),*/
                          Column(
                            children:[
                          Expanded(
                            child: Container(
                              child: ListView.builder(
                                itemCount: 15,
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: ListTile(
                                      title:
                                      Text('Message Type:'),
                                      subtitle: Text(
                                          'Name :\n Number : \nBody :' ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                            ],
                          ),
                      
                    
                    
                  
              
            
        );
  }
}