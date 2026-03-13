import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: const Align(
          alignment: Alignment.topCenter,
          child: Text("Hello",style: TextStyle(fontSize: 30.0),),
        ), 
      ),
      drawer: Drawer(
        width: 200,
        child: ListView(
          children: [
            ListTile(
              title: Align(
                alignment: Alignment.center,
                child: Text("Menu"),
              ),
            ),
            ListTile(
              title: Text("Item 1"),
              onTap: () {
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(title: const Text("This is a prototype"),content: const Text("Message"),actions: <Widget>[
                    TextButton(onPressed: () => Navigator.pop(context), child: const Text("Close"))
                  ],);
                });
              },
            ),
            ListTile(title: Text("Item 2"),onTap: () {
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(title: const Text("This is a prototype"),content: const Text("Message"),actions: <Widget>[
                    TextButton(onPressed: () => Navigator.pop(context), child: const Text("Close"))
                  ],);
                });
              }),
            ListTile(title: Text("Item 3"),onTap: () {
              showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(title: const Text("This is a prototype"),content: const Text("Message"),actions: <Widget>[
                    TextButton(onPressed: () => Navigator.pop(context), child: const Text("Close"))
                  ],);
                });
            }) 
          ],
        ),
      ),
    );
  }


}
