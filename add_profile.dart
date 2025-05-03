import 'package:flutter/material.dart';

class AddProfile extends StatefulWidget {
  const AddProfile({super.key});

  @override
  State<AddProfile> createState() => _AddProfileState();
}

class _AddProfileState extends State<AddProfile> {

  void _goBack(){
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: _goBack, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          textfields("Name"),
          textfields("Course"),
          textfields("ID Number"),
          textfields("Year"),
        ],
      ),
    );
  }

  Padding textfields(String label) {
    return Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            margin: EdgeInsets.all(1),
            child: TextField(
              decoration: InputDecoration(hintText: label),
            ),
          ),
        );
  }
}