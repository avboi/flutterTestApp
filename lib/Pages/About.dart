import 'package:flutter/material.dart';



class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Align(alignment: Alignment.topCenter,child:Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)
                    )
                    
                  ),
                  child: Image.asset("lib/assets/images/about_us.jpg",fit:BoxFit.cover),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.directional(top: 1,bottom: 2),
                )
              ],
            ),
          ),
          Align(alignment: AlignmentGeometry.center,
          child: Padding(padding: EdgeInsets.all(2),child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("This is a test app"),
              Text("By Aswin V")
            
            ]
          ),)
          ),
        ]
      )
    );
  }
}