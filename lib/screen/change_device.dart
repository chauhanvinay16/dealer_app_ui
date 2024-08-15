import 'package:animate_do/animate_do.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Change_Device extends StatefulWidget {
  const Change_Device({super.key});

  @override
  State<Change_Device> createState() => _Change_DeviceState();
}

class _Change_DeviceState extends State<Change_Device> {
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Change Device', style: TextStyle(color: Colors.white),),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 12),
            icon: Icon(
              Icons.shopping_cart_outlined, color: Colors.white, size: 25,),
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
            CircleAvatar(
              radius: 58,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://icons.veryicon.com/png/o/commerce-shopping/enterprise-financial-management/change-record-1.png'),
              // child: Stack(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(top: 100.0),
              //         child: Container(
              //           child: Align(
              //             child: Text('Change Device',style: TextStyle(color: Colors.orange),),
              //           ),
              //         ),
              //       ),
              //     ]
              // ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(

              ),
              child: FadeInUp(
                duration: Duration(milliseconds: 1600),
                child: TextField(
                  controller: _nameController,
                  minLines: 3,
                  // Set this
                  maxLines: 6,
                  // and this
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)
                      ),
                      label: Text('Reason', style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),),
                      prefixIcon: Icon(Icons.messenger_outline)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            FadeInUp(duration: Duration(milliseconds: 1600), child: Container(
              width: 300,
              child: MaterialButton(
                onPressed: () {
                  print('******************Device change');
                  // _updateProfile();
                  AnimatedSnackBar.material(
                    'Device Change successfully!',
                    type: AnimatedSnackBarType.success,
                    mobileSnackBarPosition: MobileSnackBarPosition.bottom
                  ).show(context);
                },
                height: 52,
                // margin: EdgeInsets.symmetric(horizontal: 50),
                color: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                // decoration: BoxDecoration(
                // ),
                child: Center(
                  child: Text("Submit", style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }

//   void _updateProfile() {
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

}

