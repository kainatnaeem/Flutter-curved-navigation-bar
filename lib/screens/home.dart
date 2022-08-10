import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Home"),
            backgroundColor: Colors.green,
            centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
                Text("Curved Bottom Navigation Bar",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              Image.asset(
                'images/i3.jpg',
              ),
            ],
          ),
        ));
  }
}
