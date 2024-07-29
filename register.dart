import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget{
  const MyRegister({super.key});

  @override
  _MyRegisteState createState() => _MyRegisteState();

}
class _MyRegisteState extends State<MyRegister>{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:DecorationImage(
              image: AssetImage('assets/signing.jpg'),fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50,top: 10),
              child: Text("Create Acount",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 33),),

            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3,right: 35,left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.drive_file_rename_outline),
                          fillColor:Colors.transparent,
                          filled: true,
                          hintText: 'Username',
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          )

                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          fillColor:Colors.transparent,
                          filled: true,
                          hintText: 'Email',
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          )

                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.phone),
                          fillColor:Colors.transparent,
                          filled: true,
                          hintText: 'Phoen Number',
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          )

                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      obscureText:true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.password),
                          fillColor:Colors.transparent,
                          filled: true,
                          hintText: 'Password',
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                          )

                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign Up",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor:Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){

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