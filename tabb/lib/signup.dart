import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tabb/login.dart';

import 'home.dart';

void main() => runApp(Sin());

class Sin extends StatefulWidget {
  @override
  _SinState createState() => _SinState();
}

class _SinState extends State<Sin> {

  String _email;
  String _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> SignUp() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      print("valid");
      try {
        AuthResult result = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
        FirebaseUser user = result.user;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      } catch (e) {
        print(e.message);
      }
    }
    else{
    print('invalid');
  }
  }

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
          key: _formKey,
          child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: SingleChildScrollView(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 30.0,),
                  Container(
                    margin:  EdgeInsets.only(top:0.0),
                    child:Text('Create an account', 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    )
                    ),
                    
                  ),
                  SizedBox(height: 30.0,),
                  Material(
                    
                    elevation: 2,
                    child: TextFormField(
                        decoration: InputDecoration(    
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.grey[300]),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        prefixIcon:Icon(Icons.person),
                        hintText: 'Username',
                      )
                    ),
                  ),
                 SizedBox(height: 10.0,),
                  Material(
                    
                    elevation: 2,
                    child: TextFormField(
                      validator: (input) {
                            if (input.isEmpty) {
                              return 'Please Type an Email';
                            }
                          },
                          onSaved: (input) => _email = input,
                        decoration: InputDecoration(    
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.grey[300]),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        prefixIcon:Icon(Icons.email),
                        hintText: 'Email',
                      )
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Material(
                    
                    elevation: 2,
                    child: TextFormField(
                        obscureText: true,
                        validator: (input) {
                            if (input.length < 6) {
                              return 'Please Type a Longer Password';
                            }
                          },
                          onSaved: (input) => _password = input,
                        decoration: InputDecoration(    
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.grey[300]),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          
                        ),
                        
                        prefixIcon:Icon(Icons.lock),
                        hintText: 'Password',
                      )
                    ),
                  ),

                  Container(
                    
                    margin:EdgeInsets.only(top:40.0),
                    height: 45.0,
                    child: RaisedButton(onPressed: SignUp,
                    color: Colors.red,
                    elevation: 2,
                    child: Text('REGISTER',
                  
                    style:TextStyle(color: Colors.white)
                ),
                    )
                  ),
                  Divider(
                    height:40.0,
                    thickness: 0.70,
                    color:Colors.red
                  ),
                Row(
                    children:<Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left:85,top: 0,right: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: FlatButton(onPressed: null, child: Image.asset('assets/fb_logo.jpeg')),
                            radius: 30.0,
                          )
                          )),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left:10,top: 0,right: 85),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: FlatButton(onPressed: null, child: Image.asset('assets/google_logo.jpeg')),
                            radius: 30,
                          )
                          )), 
                    ]) 
                  
                ]
              ),
          ),
        ),
      ),
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
    );
  }
}