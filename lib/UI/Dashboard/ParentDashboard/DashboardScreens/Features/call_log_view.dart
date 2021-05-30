import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CallLogView extends StatefulWidget {
  @override
  _CallLogViewState createState() => _CallLogViewState();
}

class _CallLogViewState extends State<CallLogView> {
 




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
 
        
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
                                      Text('name'),
                                      subtitle: Text(
                                          'Number\n Type : \nDate :' ),
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