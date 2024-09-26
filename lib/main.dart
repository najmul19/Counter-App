import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade50,
        title: const Text("Counter", style: TextStyle(fontSize: 30, ),),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 85,
              child: Container(
                height: 100,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Center(child: Text("0", style: TextStyle(fontSize: 70, fontWeight: FontWeight.w900),)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 15,
              child: Row(
                children: [
                  Expanded(
                      child: Container(height: double.infinity,width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade100,
                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),

                        ),
                        child: const Icon(Icons.remove, size: 50,),

                      )

                  ),
                  const SizedBox(width: 10,),
                  Expanded(child: Container( height: double.infinity ,width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade100,
                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20)),

                      

                    ),
                  child: const Icon(FontAwesomeIcons.plus,size: 50,),
                  )),
                ],
              ),

            ),

            // Expanded(
            //   flex: 15 ,
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 100, width: double.infinity,color: Colors.deepPurple,
            //       ),
            //       const SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //         height: 100, width: double.infinity,color: Colors.deepPurple,
            //       ),
            //     ],
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}


