import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xh_dealer/drawer/drawer.dart';
import 'package:xh_dealer/screen/wallet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Home',style: TextStyle(color: Colors.white),),
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
      drawer:  MyDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[

                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      // Image URLs
                      List<String> imageUrls = [
                        "https://images.unsplash.com/photo-1525904097878-94fb15835963?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&"
                            "ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2R1Y3RzfGVufDB8fDB8fHww",
                        "https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1000&auto=format&fit=crop&ixlib="
                            "rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
                        "https://pathedits.com/cdn/shop/articles/image29.jpg?v=1610384205",
                        "https://img.freepik.com/free-photo/workplace-business-modern-male-accessories-laptop-white_155003-1722.jpg",
                        "https://img.freepik.com/free-vector/realistic-podium-sale-banner_23-2150956589.jpg",
                      ];
                      return Image.network(
                        imageUrls[index],
                        height: 250,
                        width: 300,
                      );
                    },
                    itemCount: 5, // Changed itemCount to 5
                    pagination: SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.black54, // Change color here
                        activeColor: Colors.red, // Change active color here
                      ),
                    ),
                    control: SwiperControl(
                      color: Colors.black54, // Change color here
                    ),
                    autoplay: true, // Enable autoplay
                    autoplayDelay: 3000, // Set autoplay delay (3 seconds in this case)
                  ),
            ),

                // Container(
                //   margin: EdgeInsets.fromLTRB(24, 0, 30, 50),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Color(0xFF363636),
                //     ),
                //     child: Container(
                //       width: 350,
                //       padding: EdgeInsets.fromLTRB(0, 22, 0, 22),
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             margin: EdgeInsets.fromLTRB(1, 0, 0, 10),
                //             child: Text(
                //               'Total Balance',
                //               style: GoogleFonts.getFont(
                //                 'Overpass',
                //                 fontWeight: FontWeight.w400,
                //                 fontSize: 16,
                //                 height: 1,
                //                 color: Color(0xFFF4F5F5),
                //               ),
                //             ),
                //           ),
                //           Text(
                //             '\$3,567.12',
                //             style: GoogleFonts.getFont(
                //               'Overpass',
                //               fontWeight: FontWeight.w800,
                //               fontSize: 40,
                //               height: 1,
                //               color: Color(0xFFF4F5F5),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 20,),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 25,
                  children: [
                    InkWell(
                        onTap: () {
                          print("********************wallet amount");
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Wallet_screen(),));
                        },
                        child: itemDashboard('Wallet Amount', CupertinoIcons.creditcard_fill, Colors.teal)),
                    itemDashboard('Total Order', CupertinoIcons.cart_fill, Colors.purple),
                    itemDashboard('Competed Order', CupertinoIcons.checkmark_seal_fill, Colors.green),
                    itemDashboard('Pending Order', CupertinoIcons.exclamationmark_circle, Colors.orange),
                    itemDashboard('Cancelled Order', CupertinoIcons.xmark_seal_fill, Colors.red),
                    itemDashboard('Pending Amount', CupertinoIcons.clock, Colors.blue),
                    // itemDashboard('About', CupertinoIcons.clock, Colors.blue),
                    // itemDashboard('Contact', CupertinoIcons.phone, Colors.pinkAccent),
                    SizedBox(height: 0,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemDashboard(String title, IconData iconData, Color background) => Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).primaryColor.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 5
          )
        ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle,
            ),
            child: Icon(iconData, color: Colors.white)
        ),
        const SizedBox(height: 8),
        Text(title.toUpperCase(), style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.grey)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('0.00', style: TextStyle(color: Colors.grey,fontSize: 16)),
            SizedBox(width: 5),
          ],
        ),
      ],
    ),
  );
}
