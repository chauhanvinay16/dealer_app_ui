import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_Profile extends StatefulWidget {
  const User_Profile({super.key});

  @override
  State<User_Profile> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Profile',style: TextStyle(color: Colors.white),),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 12),
            icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 25,),
            onPressed: () {
              // Add your onPressed functionality here
            },
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                print('**********************Profile Image');
              },
              child: CircleAvatar(
                radius: 58,
                backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/03/02/88/46/360_F_302884605_act'
                    'pipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg'),
                child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white70,
                          child: Icon(CupertinoIcons.camera),
                        ),
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(

              ),
              child:FadeInUp(
                duration: Duration(milliseconds: 1600),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)
                      ),
                      label: Text('Username',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                      prefixIcon: Icon(Icons.person_pin)
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(

              ),
              child:FadeInUp(
                duration: Duration(milliseconds: 1600),
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
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(

              ),
              child:FadeInUp(
                duration: Duration(milliseconds: 1600),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)
                      ),
                      label: Text('Mobile Number',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                      prefixIcon: Icon(Icons.phone_android_outlined)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            FadeInUp(duration: Duration(milliseconds: 1600), child: MaterialButton(
              onPressed: () {
                print('******************upadte profile');
                _updateProfile();
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
                child: Text("Update Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            )),
          ],
        ),
      ),
    );
  }
  void _updateProfile() {
    // Perform update logic here
    String name = _nameController.text;
    String email = _emailController.text;
    String phone = _phoneController.text;

    // Print updated information (you can replace this with actual update logic)
    print('Name: $name');
    print('Email: $email');
    print('Phone: $phone');

    // Show a snackbar to indicate the update
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text('Profile updated successfully!'),
      ),
    );
  }
}
