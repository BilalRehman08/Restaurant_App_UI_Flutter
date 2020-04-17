import 'package:flutter/material.dart';
import 'itemdetails.dart';
import 'items_list.dart';

class shop extends StatefulWidget {
  @override
  _shopState createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate((context,index){
                return _Single_Item(
                  prod_name: item[index]['name'],
                  prod_picture: item[index]['picture'],
                );
              }))
          ],
        )
    );
  }
}

class _Single_Item extends StatelessWidget {
  final prod_name;
  final prod_picture;

  _Single_Item({this.prod_name, this.prod_picture});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:8.0),
      child: Card(
        child:Hero(
          tag: prod_picture,
          child: GestureDetector(
            onTap:()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>ItemDetails(prod_name,prod_picture))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height:10),
                Container(
                  height:110,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: NetworkImage(prod_picture), 
                    fit: BoxFit.cover
                  ),)
                ),
                SizedBox(width:10),
                Container(
                  height: 110,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      SizedBox(height:5),
                      Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, letterSpacing: -0.3),),
                      SizedBox(height:10),
                      RichText(text: TextSpan(
                        //style: Theme.of(context).textTheme.body1,
                        children:[
                          WidgetSpan(child: Icon(Icons.star, size: 17,color: Colors.yellowAccent,)),
                          TextSpan(text:' 5.0 (23 Review)', style: TextStyle(color:Colors.black54)),
                        ]
                      ),),
                      SizedBox(height:10),
                      RichText(text: TextSpan(
                        //style: Theme.of(context).textTheme.body1,
                        children:[
                          TextSpan(text: '20 Pieces', style: TextStyle(color: Colors.black54)),
                          TextSpan(text:'   \$90', style: TextStyle(color:Colors.red, fontSize: 17, fontWeight: FontWeight.bold),),
                        ]
                      ),),
                      SizedBox(height:10),
                      Text('Quantity: 1',style: TextStyle(color:Colors.black54),)
                    ]
                ))
              ]
            ),
          )
        )
      ),
    );
  }
}