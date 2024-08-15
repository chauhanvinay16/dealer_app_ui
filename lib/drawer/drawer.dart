import 'package:flutter/material.dart';
import 'package:xh_dealer/auth/logout.dart';
import 'package:xh_dealer/screen/change_device.dart';
import 'package:xh_dealer/screen/change_password.dart';
import 'package:xh_dealer/screen/order_list.dart';
import 'package:xh_dealer/screen/product_list.dart';
import 'package:xh_dealer/screen/user_profile.dart';
import 'package:xh_dealer/screen/wallet.dart';

import '../screen/test.dart';

class MyDrawer extends StatelessWidget {
  TextStyle textStyle=TextStyle(fontSize: 18,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30)),
        borderSide: BorderSide(
          style: BorderStyle.none
        )
      ),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Center(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent.shade100,
              ),
              accountName: Text("Chauhan Vinay",style: textStyle,),
              accountEmail: Text("vinaychauhan@gmail.com"
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/03/02/88/46/360_F_302884605_act'
                    'pipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg'),
                // child: Text(
                //   "A",
                //   style: TextStyle(fontSize: 40.0),
                // ),
              ),
            ),
          ),
          ListTile(
            leading:  Image.asset('assets/D.png',width: 25,height: 28,),
            title: Text("Dashboard"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset('assets/product.png',width: 25,height: 28,),
            title: Text("Products"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductListScreen(),));
            },
          ),
          ListTile(
            leading: Image.asset('assets/LS.png',width: 25,height: 30,),
            title: Text("Order List"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Product_list()));
            },
          ),
          ListTile(
            leading: Image.asset('assets/wal.png',width: 25,height: 30,),
            title: Text("Wallet"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Wallet_screen(),));
            },
          ),
          ListTile(
            leading: Image.asset('assets/DD.png',width: 28,height: 30,),
            title: Text("Change Device"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => Change_Device(),));
            },
          ),
          ListTile(
            leading: Image.asset('assets/UF.png',width: 25,height: 30,),
            title: Text("Profile"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => User_Profile(),));
            },
          ),
          ListTile(
            leading: Image.asset('assets/pas.png',width: 25,height: 30,),
            title: Text("Change Password"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => Change_password(),));
            },
          ),
          ListTile(
            leading: Image.asset('assets/logout.png',width: 25,height: 30,),
            title: Text("Logout"),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyApp3(),));
            },
          ),
         
        ],
      ),
    );
  }
}
