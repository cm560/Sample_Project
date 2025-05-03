import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> _images = ["cute.jpg", "malupiton.jpg", "profile.jpg", "tcgc.png"];

  int row = 2;
  int col = 3;

  void _twoByThree(){
    setState(() {
      row = 2;
      col = 3;
    });
  }

   void _threeByThree(){
    setState(() {
      row = 3;
      col = 3;
    });
  }

   void _fourByThree(){
    setState(() {
      row = 4;
      col = 3;
    });
  } 
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            flex: 2,
            child: GridView.builder(
              //physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: row), 
              itemCount: row * col,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.pink[100],
                  child: Image.asset("lib/images/profile.jpg", fit: BoxFit.fill,),
                );
              }
          
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: 10,
                children: [
                  GestureDetector(
                    onTap: _twoByThree,
                    child: Container(
                      color: Colors.grey[100],
                      padding: EdgeInsets.all(10),
                      child: Text("2x3", style: TextStyle(fontSize: 15, color: Colors.black),)
                    ),
                  ),
                  GestureDetector(
                    onTap: _threeByThree,
                    child: Container(
                      color: Colors.grey[100],
                      padding: EdgeInsets.all(10),
                      child: Text("3x3", style: TextStyle(fontSize: 15, color: Colors.black),)
                    ),
                  ),
                  GestureDetector(
                    onTap: _fourByThree,
                    child: Container(
                      color: Colors.grey[100],
                      padding: EdgeInsets.all(10),
                      child: Text("4x3", style: TextStyle(fontSize: 15, color: Colors.black),)
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );
  }
}