import 'package:flutter/material.dart';

var imageURL = "assets/pizza-logo.png";

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

// class _ContactScreenState extends State<ContactScreen> {
//   TextEditingController _nameCtrl = TextEditingController();
//   TextEditingController _emailCtrl = TextEditingController();
//   TextEditingController _phoneCtrl = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => {},
          ),
          title: Text(
            "Pizza Hut",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),

          // centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                height: 200,
                width: 200,
                child: Image.network(
                  imageURL,
                  // fit: BoxFit.cover,
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Address',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Text('Create New Account'),
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red.shade700,
                    child: Text('Sign Up'),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Row(
                    children: <Widget>[Text('Already Have Account?')],
                    mainAxisAlignment: MainAxisAlignment.center,
                  )),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/facebook-logo.png"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/google-logo.png"),
                  ),
                ],
              )
            ])));
  }
}
