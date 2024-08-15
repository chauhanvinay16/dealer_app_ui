import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:xh_dealer/auth/login.dart';

class Forgot_pass extends StatefulWidget {
  const Forgot_pass({super.key});

  @override
  State<Forgot_pass> createState() => _Forgot_passState();
}

class _Forgot_passState extends State<Forgot_pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.black87,
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeInUp(duration: Duration(milliseconds: 1000), child: Text("Reset", style: TextStyle(color: Colors.white, fontSize: 35,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 5,),
                  FadeInUp(duration: Duration(milliseconds: 1000), child: Text("Password ?", style: TextStyle(color: Colors.white, fontSize: 42,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),
                  // FadeInUp(duration: Duration(milliseconds: 1300), child: Text("We missed you! Login to get \n started", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25),bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25))
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        // FadeInUp(duration: Duration(milliseconds: 1000), child: Padding(
                        //   padding: const EdgeInsets.only(right: 200),
                        //   child: Text("Login", style: TextStyle(color: Colors.black87, fontSize: 30),),
                        // )),
                        SizedBox(height: 20,),
                        FadeInUp(duration: Duration(milliseconds: 1400), child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [BoxShadow(
                            //     color: Color.fromRGBO(225, 95, 27, .3),
                            //     blurRadius: 20,
                            //     offset: Offset(0, 10)
                            // )]
                          ),
                          child: Column(
                            children: <Widget>[
                              FadeInUp(duration: Duration(milliseconds: 1500), child: InkWell(
                                  onTap: () {
                                    print('*********************forgot pssss****');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text("Don't warry! it happens.Please enter the email address associated eith your account.", style: TextStyle(color: Colors.grey,fontSize: 15),),
                                  ))),
                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(

                                ),
                                child:FadeIn(duration: Duration(milliseconds: 1500),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(11)
                                        ),
                                        label: Text('Email',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                                        prefixIcon: Icon(Icons.alternate_email_outlined)
                                    ),
                                  ),
                                ),
                              ),

                              // Container(
                              //   padding: EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //       border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              //   ),
                              //   child: TextField(
                              //     obscureText: true,
                              //     decoration: InputDecoration(
                              //         hintText: "Password",
                              //         hintStyle: TextStyle(color: Colors.grey),
                              //         border: InputBorder.none
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        )),

                        SizedBox(height: 20,),
                        FadeInUp(duration: Duration(milliseconds: 1600), child: MaterialButton(
                          onPressed: () {
                            print('******************log in');
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => Home_screen(),));
                          },
                          height: 52,
                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          color: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),

                          ),
                          // decoration: BoxDecoration(
                          // ),
                          child: Center(
                            child: Text("Reset Password", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        )),
                        SizedBox(height: 30,),
                        FadeInUp(duration: Duration(milliseconds: 1500), child: InkWell(
                            onTap: () {
                              print('*********************Back to login');
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text("Back To Login !", style: TextStyle(color: Colors.grey,fontSize: 15),),
                            ))),

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
