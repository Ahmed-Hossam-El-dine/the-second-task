import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),

            //// Text Notepad ////
            Container(
              alignment: const FractionalOffset(0.1, 0.6),
              child: const Text(
                'Notepad',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            
            //// TextformField Search notes ////
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 3.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  labelText: 'Search notes',
                  filled: false,
                  prefixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            //// Container ////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.all(8.0),
                    child: Row(children: const [
                      Text("Todays grocery list",
                      style: TextStyle(fontSize: 22)),
                      
                    ]),
                    ),
                    Column(children: [
                      Row(
                        children: const [
                          Text("   June 26,2022 08:05 PM",
                          style: TextStyle(fontSize: 13)),
                        ],
                      ),
                    ],)
                  
                  ],)
              ),
            ),

           
           //// Container ////
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.all(5.0),
                    child: Row(children: const [
                      Text(" Rich dada poor dad quotes",
                      style: TextStyle(fontSize: 22)),
                      
                    ]),
                    ),
                    Column(children: [
                      Row(
                        children: const [
                          Text("   June 22,2022 05:00 PM",
                          style: TextStyle(fontSize: 13)),
                        ],
                      ),
                    ],)
                  
                  ],)
              ),
            ),
          ],
        ),
      ),

      //// Floating Button Of add ////
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
        child: const Icon(Icons.add,size: 35,),
      ),
    );
  }
}
