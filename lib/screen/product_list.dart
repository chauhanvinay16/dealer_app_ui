import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_list extends StatefulWidget {
  const Product_list({super.key});

  @override
  State<Product_list> createState() => _Product_listState();
}

class _Product_listState extends State<Product_list> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text('ORDER LIST', style: TextStyle(color: Colors.white,fontSize: 18),),
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

          bottom: TabBar(
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            tabs: <Widget>[
              Tab(text: "Conform Order"),
              Tab(text: "Pending Order"),
              Tab(text: "Complete Order"),
            ],
            indicatorColor: Colors.white,
            indicatorWeight: 4.0,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ConfirmOrderPage(),
            PendingOrderPage(),
            CompleteOrderPage(),

          ],
        ),
      ),
    );
  }
}

class ConfirmOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '08-May-2024',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF4B5060),
                      ),
                    ),
                    Text(
                      '₹-7900.00',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'SALES-0570',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF4B5060),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Conform',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Action for View Details button
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set border radius here
                          ),
                        ),
                        child: Text('View Details',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Action for PDF button
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set border radius here
                          ),
                        ),
                        child: Text('PDF',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '08-May-2024',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF4B5060),
                      ),
                    ),
                    Text(
                      '₹-7900.00',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'SALES-0570',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF4B5060),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Conform',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Action for View Details button
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set border radius here
                          ),
                        ),
                        child: Text('View Details',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Action for PDF button
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set border radius here
                          ),
                        ),
                        child: Text('PDF',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}

class PendingOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '08-May-2024',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF4B5060),
                      ),
                    ),
                    Text(
                      '₹-7900.00',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'SALES-0570',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF4B5060),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.red,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Pending',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Action for View Details button
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set border radius here
                          ),
                        ),
                        child: Text('View Details',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Action for PDF button
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set border radius here
                          ),
                        ),
                        child: Text('PDF',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '08-May-2024',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF4B5060),
                      ),
                    ),
                    Text(
                      '₹-7900.00',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'SALES-0570',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF4B5060),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.red,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Pending',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Action for View Details button
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set border radius here
                          ),
                        ),
                        child: Text('View Details',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Action for PDF button
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set border radius here
                          ),
                        ),
                        child: Text('PDF',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CompleteOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '08-May-2024',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF4B5060),
                      ),
                    ),
                    Text(
                      '₹-7900.00',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'SALES-0570',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF4B5060),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.green,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Complete',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Action for View Details button
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set border radius here
                          ),
                        ),
                        child: Text('View Details',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Action for PDF button
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set border radius here
                          ),
                        ),
                        child: Text('PDF',style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          // Container(
          //   padding: EdgeInsets.all(16.0),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(10),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey.withOpacity(0.5),
          //         spreadRadius: 2,
          //         blurRadius: 5,
          //         offset: Offset(0, 3), // changes position of shadow
          //       ),
          //     ],
          //   ),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Text(
          //             '08-May-2024',
          //             style: TextStyle(
          //               fontWeight: FontWeight.w400,
          //               fontSize: 16,
          //               color: Color(0xFF4B5060),
          //             ),
          //           ),
          //           Text(
          //             '7900.00',
          //             style: TextStyle(
          //               fontWeight: FontWeight.w600,
          //               fontSize: 16,
          //               color: Colors.black,
          //             ),
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: 8),
          //       Text(
          //         'SALES-0570',
          //         style: TextStyle(
          //           fontWeight: FontWeight.w400,
          //           fontSize: 16,
          //           color: Color(0xFF4B5060),
          //         ),
          //       ),
          //       SizedBox(height: 8),
          //       Row(
          //         children: [
          //           Icon(
          //             Icons.circle,
          //             size: 12,
          //             color: Colors.red,
          //           ),
          //           SizedBox(width: 8),
          //           Text(
          //             'Pending',
          //             style: TextStyle(
          //               fontWeight: FontWeight.w400,
          //               fontSize: 16,
          //               color: Color(0xFF4B5060),
          //             ),
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: 16),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Expanded(
          //             child: OutlinedButton(
          //               onPressed: () {
          //                 // Action for View Details button
          //               },
          //               style: OutlinedButton.styleFrom(
          //                 shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(10), // Set border radius here
          //                 ),
          //               ),
          //               child: Text('View Details'),
          //             ),
          //           ),
          //           SizedBox(width: 8),
          //           Expanded(
          //             child: OutlinedButton(
          //               onPressed: () {
          //                 // Action for PDF button
          //               },
          //               style: OutlinedButton.styleFrom(
          //                 shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(10), // Set border radius here
          //                 ),
          //               ),
          //               child: Text('PDF'),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

void setState(Null Function() param0) {
}
