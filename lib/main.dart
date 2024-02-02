import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

  class LoginPage extends StatefulWidget{ 
    @override
    _LoginPageState createState() => _LoginPageState();
  }

class _LoginPageState  extends State<LoginPage>{

  TextEditingController _usernameController = TextEditingController() ;
  TextEditingController _passwordController = TextEditingController() ;


  void _login()
  { 
      String username = _usernameController.text ;
      String password = _usernameController.text ;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("user name : $username /n Password : $password") ,

        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: 
      
      Container(

        color: Colors.white,

child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: "UserName:",
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          SizedBox(height: 20,) ,
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password" ,
                labelStyle: TextStyle(color: Colors.white),

            ),
          ),
          SizedBox(height: 20,) , 
          ElevatedButton(onPressed: _login, child: Text("Login") ,          
          )
          ],


        ),
      ),
      )
    );


      
        }

}  // class LoginPage



