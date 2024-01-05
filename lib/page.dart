import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  String dropdawn = "My Profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: Text(""),
        title: Text("Drop Down",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: DropdownButton<String>(
          
          value: dropdawn,
          style: TextStyle(color: Colors.black),
          underline: Container(
            height: 3,
            
          ),
          onChanged: (String? newvalue) {
            setState(() {
              dropdawn = newvalue!;
            });
          },
          items: [
             DropdownMenuItem(value: "My Profile", child: Text("My Profile")),
              DropdownMenuItem(value: "Notification", child: Text("Notification")),
              DropdownMenuItem(value: "Project", child: Text("project")),
              DropdownMenuItem(value: "Settings", child: Text("Settings")),
              DropdownMenuItem(value: "Logout", child: Text("Logout"))

          ],
        ),
      )
    );
  }
}

