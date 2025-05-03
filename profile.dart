import 'package:first_project/pages/add_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  void _gotoAddPage(BuildContext context) async{
    final route = await Navigator.push(context, 
      MaterialPageRoute(builder: (context) => AddProfile())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: Center(
            child: Text("Students", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Chris", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Student"),
                    ],
                  ),
                ),
              ),
          ),

        ),
        GestureDetector(
          onTap: (){
            _gotoAddPage(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text("Add Data"),
              ),
            ),
          ),
        )
      ],
    );
  }
}
