import 'package:flutter/material.dart';
import 'items_list.dart';
import 'itemdetails.dart';

class favourite extends StatefulWidget {
    
  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  
  // var item = [
  //   {"name": 'Burger', "picture": 'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg'},
  //   {"name": 'Burger', "picture": 'https://cdn.pixabay.com/photo/2017/08/12/18/59/snack-2635035__340.jpg'},
  //   {"name": 'Cake', "picture": 'https://cdn.pixabay.com/photo/2016/11/22/18/52/cake-1850011__340.jpg'},
  //   {"name": 'Chicken', "picture": 'https://cdn.pixabay.com/photo/2016/08/30/18/45/grilled-1631727__340.jpg'},
  //   {"name": 'Burger', "picture": 'https://cdn.pixabay.com/photo/2016/03/05/19/02/abstract-1238247__340.jpg'},
  //   {"name": 'Chicken', "picture": 'https://cdn.pixabay.com/photo/2017/06/28/17/40/chicken-2451482__340.jpg'},
  //   {"name": 'Handi', "picture": 'https://cdn.pixabay.com/photo/2014/06/16/23/10/spice-370114__340.jpg'},
  //   {"name": 'Burger', "picture": 'https://cdn.pixabay.com/photo/2019/01/29/18/05/burger-3962996__340.jpg'},
  //   {"name": 'Mutton', "picture": 'https://cdn.pixabay.com/photo/2016/03/05/20/07/abstract-1238657__340.jpg'},
  //   {"name": 'Roll', "picture": 'https://cdn.pixabay.com/photo/2020/04/07/22/08/indian-food-5015066__340.jpg'},
  //   {"name": 'Burger', "picture": 'https://cdn.pixabay.com/photo/2017/09/02/13/38/burger-2707320__340.jpg'},
  //   {"name": 'Salad', "picture": 'https://cdn.pixabay.com/photo/2016/09/15/19/24/salad-1672505__340.jpg'},
  //   {"name": 'Sandwich', "picture": 'https://cdn.pixabay.com/photo/2017/05/10/17/27/sandwich-2301387__340.jpg'},
  //   {"name": 'Spaghetti', "picture": 'https://cdn.pixabay.com/photo/2012/02/26/10/51/beef-17040__340.jpg'},
  // ] as List;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
              slivers: <Widget>[
              SliverToBoxAdapter(
                      child: Container(
                        child: Text('My Favourite Items',
                            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                      margin: EdgeInsets.only(top:15,bottom:15),
                      ),
              ),
              SliverGrid(
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    delegate: SliverChildBuilderDelegate((BuildContext context, int index){
                    return Single_Item(
                      prod_name: item[index]['name'],
                      prod_picture: item[index]['picture'],
                  ); 
                    },
                childCount: item.length,
                )
             ),
         ] )
      );
  }
}

class Single_Item extends StatelessWidget {
  final prod_name;
  final prod_picture;

  Single_Item({this.prod_name, this.prod_picture});

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
