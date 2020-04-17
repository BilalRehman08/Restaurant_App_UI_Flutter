import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Row(children:<Widget>[
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQw-kbUCMuckA2uIX9pqkAJ467zB4VYUelJzSn7uY_b01sEdKlY&usqp=CAU'),)  
                        ),
                      ),
                      SizedBox(height:10,width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Align(child: Text("Mr.Goku",style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold)), alignment:Alignment.topLeft,),
                          ),
                          SizedBox(height:5),
                          Container(
                            child: Align(child: Text("goku@gmail.com",style:TextStyle(fontSize: 15, fontWeight: FontWeight.bold)), alignment:Alignment.centerLeft,),
                          ),
                          SizedBox(height:25),
                          Container(
                           child: InkWell(onTap:(){},child: Text("logout", style: TextStyle(color: Colors.red), textAlign: TextAlign.left,)),
                          ),
                        ],
                      )
                    ]),
                    SizedBox(height:40),
                    Text("ACCOUNT INFORMATION", style: TextStyle(letterSpacing: 1, fontSize: 17, fontWeight: FontWeight.bold)),
                    SizedBox(height:15),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: info()                      
                      ),
                    ListTile(
                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 //children:<Widget>[ 
                   title:Text('Dark Theme', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 0.75)),
                   trailing: Switch(value: false, onChanged: (changedTheme){}),
            )
                  ]
    ),
        ),
      ));
    
  }
}
class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Container(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:<Widget>[ 
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:<Widget>[ 
                   Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text('Full Name', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 0.75)),
                    SizedBox(height:3),
                    Text("Super Saiyan Goku", style: TextStyle(color: Colors.grey , fontSize:15),) ],),
                  Icon(Icons.edit,color: Colors.grey)
                ]),
               SizedBox(height:20),
               Text('Email', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 0.75)),
               SizedBox(height:3),
               Text("goku@gmail.com", style: TextStyle(color: Colors.grey , fontSize:15),),
               SizedBox(height:20),
               Text('Phone', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 0.75)),
               SizedBox(height:3),
               Text("+0900-786 01", style: TextStyle(color: Colors.grey , fontSize:15),),
               SizedBox(height:20),
               Text('Address', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 0.75)),
               SizedBox(height:3),
               Text("Area-51 in Jupyter Planet, House No. 562", style: TextStyle(color: Colors.grey , fontSize:15),),
               SizedBox(height:20),
               Text('Gender', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 0.75)),
               SizedBox(height:3),
               Text("Male", style: TextStyle(color: Colors.grey , fontSize:15),),
               SizedBox(height:20),
               Text('Date of Birth', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 0.75)),
               SizedBox(height:3),
               Text("October 13, 1999", style: TextStyle(color: Colors.grey , fontSize:15),),
               ]
              ),]),
  );
  }
}