import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myloging1 extends StatefulWidget{
  const Myloging1({super.key});

  @override
  _MyLogin1State createState()=>_MyLogin1State();

}
class _MyLogin1State extends State<Myloging1> {
  int MyIndex =0;
  List<Widget>screen=[

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/loging.jpg'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        body: screen[MyIndex],
        appBar:AppBar(
          title: Text("SHOP MART",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
          backgroundColor: Color(0xff4c505b),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),color: Colors.white,)
          ],
        ) ,
        bottomNavigationBar: BottomNavigationBar(

          onTap: (index){
           setState(() {
             MyIndex=index;
           });
          },
          currentIndex: MyIndex,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.home),
                label:"Home",
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.store),
                label: "Store",
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.favorite),
                label: "Favorite",
                backgroundColor: Colors.deepPurple
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.account_circle),
                label: "Profile",
                backgroundColor: Colors.yellow
            ),
          ],
        ),
      ),
    );
  }

}