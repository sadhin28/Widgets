import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForget extends StatefulWidget{
  const MyForget({super.key});

  @override
  _MyForgetState createState()=>_MyForgetState();

}
class _MyForgetState extends State<MyForget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/signing.jpg'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 70, top: 90),
              child: Text(
                "Forget\nPassword", style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 33),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.5, right: 35, left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.mail),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Forget Password", style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold,)),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              //add next page
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],

                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
