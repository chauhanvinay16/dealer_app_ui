import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xh_dealer/API/API_services.dart';
import 'package:xh_dealer/auth/forgotpass.dart';
import 'package:xh_dealer/dashbord/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;


  Future<void> loginApi() async {
    final apiUrl = 'https://inventory.vibrantcoders.in/public/api/login';
    final mobileNo = _mobileController.text;
    final password = _passwordController.text;
    final deviceToken = '12345678910';
    final deviceType = '1';

    final headers = {
      'Content-Type': 'application/json',
    };

    final body = jsonEncode({
      'mobile_no': mobileNo,
      'password': password,
      'device_token': deviceToken,
      'device_type': deviceType,
    });

    final response = await http.post(Uri.parse(apiUrl), headers: headers, body: body);
    if (response.statusCode == 200) {
      SharedPreferences preferences=await SharedPreferences.getInstance();
      preferences.setString("device_token", deviceToken);
      print('********Local Storage:$deviceToken*********');

      preferences.setString("device_type", deviceType);
      print('********Local Storage:$deviceType*********');

      preferences.getString('mobile_no');
      preferences.getString('password');

      preferences.setString('mobile_no', _mobileController.text);
      print('********Local Storage user:$mobileNo*********');
      preferences.setString('password', _passwordController.text);
      print('********Local Storage pass:$password*********');

      final responseBody = jsonDecode(response.body);
      print('Login successful: $responseBody');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login successful!'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green,));
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    } else {
      print('Error: ${response.statusCode}');
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  FadeInUp(duration: Duration(milliseconds: 1000), child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeInUp(duration: Duration(milliseconds: 1000), child: Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),)),
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
                             Container(
                               padding: EdgeInsets.all(10),
                               decoration: BoxDecoration(

                               ),
                               child:TextField(
                                 controller: _mobileController,
                                 decoration: InputDecoration(
                                     border: OutlineInputBorder(
                                         borderRadius: BorderRadius.circular(11)
                                     ),
                                     label: Text('Mobile Number',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                                     prefixIcon: Icon(Icons.phone_android_outlined)
                                 ),
                               ),
                             ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(

                                ),
                                child: TextField(
                                  obscureText: true,
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(11),
                                      ),
                                      label: Text('Password',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                                      prefixIcon: Icon(Icons.lock_open_outlined)
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
                              //         hintStyle: TextStyle(color: Colos.grey),
                              //         border: InputBorder.none
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        )),
                        SizedBox(height: 10,),
                        FadeInUp(duration: Duration(milliseconds: 1500), child: InkWell(
                          onTap: () {
                            print('*********************forgot pssss****');
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot_pass(),));
                          },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text("Forgot Password?", style: TextStyle(color: Colors.grey,fontSize: 15),),
                            ))),
                        SizedBox(height: 50,),
                        FadeInUp(duration: Duration(milliseconds: 1600), child: MaterialButton(
                          onPressed: () async{
                            await loginApi();
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
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
                            child:_isLoading ? CircularProgressIndicator() : Text('Login'),
                          ),
                        )),
                        SizedBox(height: 30,),

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
