import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tabb/home/favourite.dart';
import 'itemdetails.dart';
import 'items_list.dart';

class dashboard extends StatefulWidget {
  
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Dishes",
                        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                    InkWell(
                        child: Text('View More',
                            style: TextStyle(color: Colors.red, fontSize: 15)))
                  ],
                    ),
                SizedBox(height:20),
                CarouselSlider(
                        //  aspectRatio: 16/9,
                        viewportFraction: 0.999,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(milliseconds: 200),

                        scrollDirection: Axis.horizontal,
                        height:  MediaQuery.of(context).size.height *0.45,
                        
                        items: a.map((i) {
                          return _Single_Item(
                          prod_name: item[i]['name'],
                          prod_picture: item[i]['picture'],
                         );
    
                           }).toList(),
                          ),
                SizedBox(height:10),
                Text("Food Categories", style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold)),
                SizedBox(height:15),
                Container(
                  height:45,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      
                      RaisedButton(
                        onPressed: (){},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                        ),
                        textColor: Colors.black,
                        color: Colors.white,
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Icon(Icons.local_drink,color:Colors.red),
                          SizedBox(width:10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget>[
                              SizedBox(height:4),
                                Text("Drinks",style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                Text("5 items",style:
                                  TextStyle(fontSize: 10))],
                          )
                        ]
                        )
                      ),
                      SizedBox(width:10),
                      RaisedButton(
                        onPressed: (){},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                        ),
                        textColor: Colors.black,
                        color: Colors.white,
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Icon(Icons.local_pizza,color:Colors.red),
                          SizedBox(width:10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget>[
                              SizedBox(height:4),
                                Text("Miscellaneous",style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                Text("20 items",style:
                                  TextStyle(fontSize: 10))],
                          )
                        ]
                        )
                      ),
                      SizedBox(width:10),
                      RaisedButton(
                        onPressed: (){},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                        ),
                        textColor: Colors.black,
                        color: Colors.white,
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Icon(Icons.cake,color:Colors.red),
                          SizedBox(width:10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget>[
                              SizedBox(height:4),
                                Text("Desert",style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                Text("9 items",style:
                                  TextStyle(fontSize: 10))],
                          )
                        ]
                        )
                      ),
                      SizedBox(width:10),
                      RaisedButton(
                        onPressed: (){},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                        ),
                        textColor: Colors.black,
                        color: Colors.white,
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Icon(Icons.fastfood,color:Colors.red),
                          SizedBox(width:10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget>[
                              SizedBox(height:4),
                                Text("Fast Foods",style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                Text("5 items",style:
                                  TextStyle(fontSize: 10))],
                          )
                        ]
                        )
                      ),
                      SizedBox(width:10),
                      RaisedButton(
                        onPressed: (){},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                        ),
                        textColor: Colors.black,
                        color: Colors.white,
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Icon(Icons.details, color: Colors.red,),
                          SizedBox(width:10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget>[
                              SizedBox(height:4),
                                Text("Meals",style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                Text("15 items",style:
                                  TextStyle(fontSize: 10))],
                          )
                        ]
                        )
                      ),
                  ],)
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Popular Items",
                        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                    InkWell(
                        child: Text('View More',
                            style: TextStyle(color: Colors.red, fontSize: 15)))
                  ],
                    ),
                  SizedBox(height:20)
                
              ]
      ),
    ),
            ),
            SliverGrid(
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    delegate: SliverChildBuilderDelegate((BuildContext context, int index){
                    return fav(
                      prod_name: item[index]['name'],
                      prod_picture: item[index]['picture'],
                  ); 
                    },
                childCount: item.length,
                )
             ),
          ]
            
    ),
  );
  }
}

class _Single_Item extends StatelessWidget {
 
 final prod_name;
  final prod_picture;

  _Single_Item({this.prod_name, this.prod_picture});
  
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.95,
      height: MediaQuery.of(context).size.height *0.35,
      child: Card(
        child:Hero(
          tag:prod_name,
          child: GestureDetector(
            onTap:()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>ItemDetails(prod_name,prod_picture))),
            child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*0.945,
                          height: MediaQuery.of(context).size.height *0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: NetworkImage(prod_picture), 
                            fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height:10),
                        Container(
                          child:Text(" $prod_name",
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                        ),
                        SizedBox(height:7),
                        Container(
                          width: MediaQuery.of(context).size.width*0.93,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(width:2),
                              Icon(Icons.star,color: Colors.yellowAccent,size: 11,),
                              SizedBox(width:1),
                              Icon(Icons.star,color: Colors.yellowAccent,size: 11,),
                              SizedBox(width:1),
                              Icon(Icons.star,color: Colors.yellowAccent,size: 11,),
                              SizedBox(width:1),
                              Icon(Icons.star,color: Colors.yellowAccent,size: 11,),
                              SizedBox(width:1),
                              Icon(Icons.star,color: Colors.yellowAccent,size: 11,),
                              SizedBox(width:2),
                              Text("5.0 (23 Reviews)", style: TextStyle(fontSize:11),)
                            ],),
                        )
                      ],
                    ),)
          ),
      ),
    );
  }
}



class fav extends StatelessWidget {
  final prod_name;
  final prod_picture;

  fav({this.prod_name, this.prod_picture});

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Hero(
            tag: prod_picture,
              child:GestureDetector(
                  onTap:()=> Navigator.push(context, MaterialPageRoute(builder:(context)=>ItemDetails(prod_name,prod_picture))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height:130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: NetworkImage(prod_picture), 
                          fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(height:8),
                      Container(
                        height: 25,
                        child:Text(prod_name,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                      ),
                      SizedBox(height:7),
                      Container(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.star,color: Colors.yellowAccent,size: 11,),
                            SizedBox(width:1),
                            Icon(Icons.star,color: Colors.yellowAccent,size: 11,),
                            SizedBox(width:1),
                            Icon(Icons.star,color: Colors.yellowAccent,size: 11,),
                            SizedBox(width:1),
                            Icon(Icons.star,color: Colors.yellowAccent,size: 11,),
                            SizedBox(width:1),
                            Icon(Icons.star,color: Colors.yellowAccent,size: 11,),
                            SizedBox(width:2),
                            Text("5.0 (23 Reviews)", style: TextStyle(fontSize:11),)
                          ],),
                      )
                    ],
                  ),
    )));
  }
}
