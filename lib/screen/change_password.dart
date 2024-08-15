import 'package:animate_do/animate_do.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Change_password extends StatefulWidget {
  const Change_password({super.key});

  @override
  State<Change_password> createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Change Password',style: TextStyle(color: Colors.white),),
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
            Container(
              child: CircleAvatar(
                backgroundColor: Colors.white12,
                radius: 65,
                backgroundImage: AssetImage('assets/images/xh.png')
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)
                      ),
                      label: Text('Old Password',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                      prefixIcon: Icon(Icons.arrow_forward_ios_outlined)
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)
                      ),
                      label: Text('New Password',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                      prefixIcon: Icon(Icons.arrow_forward_ios_outlined)
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)
                      ),
                      label: Text('Conform Password',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                      prefixIcon: Icon(Icons.arrow_forward_ios_outlined)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            FadeInUp(duration: Duration(milliseconds: 1600), child: MaterialButton(
              onPressed: () {
                print('******************Change Password');
                // _updateProfile();
                AnimatedSnackBar.material(
                    'Password Change successfully!',
                    type: AnimatedSnackBarType.success,
                    mobileSnackBarPosition: MobileSnackBarPosition.bottom
                ).show(context);
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
                child: Text("Change Password", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            )),
          ],
        ),
      ),
    );
  }
}


//void _updateProfile() {
//     // Perform update logic here
//     String name = _nameController.text;
//
//     // Print updated information (you can replace this with actual update logic)
//     print('Name: $name');
//
//     // Show a snackbar to indicate the update
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         backgroundColor: Colors.green,
//         content: Text('Device Change successfully!'),
//       ),
//     );
//   }
// }
