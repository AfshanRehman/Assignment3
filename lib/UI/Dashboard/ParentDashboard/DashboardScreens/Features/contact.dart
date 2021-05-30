
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
 




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
  
        body:   Column(
                            children:[
                          Expanded(
                            child: Container(
                              child: ListView.builder(
                                itemCount: 15,
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: ListTile(
                                      title:
                                      Text('Id:'),
                                      subtitle: Text(
                                          'Name :\n Number:' ),
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