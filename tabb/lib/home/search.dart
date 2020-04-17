

import 'package:flutter/material.dart';
import 'items_list.dart';
void main() => runApp(search());

class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
              slivers: <Widget>[
              SliverToBoxAdapter(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 10.0),
                      Material(
                       child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey[300]),
                                
                              ),
                              suffixIcon: Icon(Icons.search),
                              hintText: 'Username',
                            )),),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              child: Align(child: Text("History"), alignment:Alignment.topLeft,),
                            ),
                        ),
                        SizedBox(height: 25.0),
                        ],
                      ),
                      
              ),
              SliverList(
                  
                    delegate: SliverChildBuilderDelegate((BuildContext context, int index){
                    return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(item[index]['picture']),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              
                              Text(item[index]['name'],style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black)),
                              SizedBox(height: 5.0),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star,color: Colors.yellow, size: 15,),
                                  SizedBox(width: 5.0),
                                  Text("5.0 (23 Reviews)"),
                                  
                                ]
                              )
                            ],
                          ),
                          trailing: new Text("S10"),
                      );
                  
                    },
                childCount: item.length,
                )
             ),
         ] )
      );
  }
}
 





