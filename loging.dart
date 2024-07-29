
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Myloging extends StatefulWidget{
  const Myloging({super.key});

  @override
  _MyLoginState createState()=>_MyLoginState();

}
class _MyLoginState extends State<Myloging> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/loging.jpg'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 70, top: 90),
              child: Text("Welcome\nBack", style: TextStyle(color: Colors.white,
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
                          icon: Icon(Icons.email),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.password),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign In", style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold,)),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pushNamed(context, 'page1');
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],

                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: Text("Sign Up", style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4c505b),
                            ),)),
                        TextButton(

                            onPressed: () {
                              Navigator.pushNamed(context, 'forget');
                            },
                            child: Text("Forget Password", style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4c505b),
                            ),))
                      ],
                    )
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