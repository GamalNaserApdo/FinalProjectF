import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {           // mesh 7yp2a feha ta8erat
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        body: Container(
          child: const Column(
            children: [

            ],
          ),
        ),
      )
    );
  }
}



class MyHomePage extends StatefulWidget {           // de ma3naha en 7yp2a feha mo8erat   (7ala kapla le el ta8eer)
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {    // wakef 3and de pt3mdel aeh
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const FlutterLogo(
            size: 100,
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(labelText: "Phone Number"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              decoration: const InputDecoration(labelText: "password"),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(          // lma akon 3aez a3mel clicable area
            onTap: (){  
              print("Log In");      // awl mayd8at 3la el button   7ytpa3 log in fe el terminla
            },
         child: Container(    // men awel hena shakl el button 
          width: 300,
            height: 50,
            decoration: BoxDecoration(    // el satr da pa3melo 3ashan alw 3aez adef color m3a radius
              color: Colors.blue[300],
            borderRadius: BorderRadius.circular(5),
            ),
           child: const Center(
             child: Text("Log In",
               style: TextStyle(
                 color: Colors.white,
               fontSize: 18,
               fontWeight: FontWeight.bold,
             ),
           ),
          ),
          ),
          ),
          const SizedBox(       // empty
            height: 30,
          ),
          const Text("Forgot password? yawa.Tap me"),
          const SizedBox(
            height: 20,
          ),

        
      InkWell(
        onTap: (){
          print("Log In");
        },
        child: Container(
            width: 300,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(3),
            ),
            child: const Center(
              child: Text("No Account?Sign Up",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ),
      ],
      ),
    );
  }
}