import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:popup_banner/popup_banner.dart';

class Wallet_screen extends StatefulWidget {
  const Wallet_screen({super.key});

  @override
  State<Wallet_screen> createState() => _Wallet_screenState();
}

class _Wallet_screenState extends State<Wallet_screen> {

  List<String> images = [
    "https://tinyurl.com/popup-banner-image",
    "https://tinyurl.com/popup-banner-image2",
    "https://tinyurl.com/popup-banner-image3",
    "https://tinyurl.com/popup-banner-image4"
  ];

  TextEditingController _fromDateController = TextEditingController();
  TextEditingController _toDateController = TextEditingController();

  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        controller.text = picked.toString();
      });
    }
  }

  void showHideDotsPopup() {
    PopupBanner(
      context: context,
      images: images,
      useDots: false,
      onClick: (index) {
        debugPrint("CLICKED $index");
      },
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Product List', style: TextStyle(color: Colors.white),),
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
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(24, 0, 30, 0), // Adjusted margin
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF363636),
                  ),
                  child: Container(
                    width: 350,
                    padding: EdgeInsets.fromLTRB(0, 22, 0, 22),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(1, 0, 0, 10),
                          child: Text(
                            'Total Balance',
                            style: GoogleFonts.getFont(
                              'Overpass',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1,
                              color: Color(0xFFF4F5F5),
                            ),
                          ),
                        ),
                        Text(
                          '\$3,567.12',
                          style: GoogleFonts.getFont(
                            'Overpass',
                            fontWeight: FontWeight.w800,
                            fontSize: 28,
                            height: 1,
                            color: Color(0xFFF4F5F5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0), // Adjusted padding
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _fromDateController,
                        decoration: InputDecoration(
                          labelText: 'Start Date',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_today),
                            onPressed: () => _selectDate(context, _fromDateController),
                          ),
                        ),
                        readOnly: true,
                      ),
                    ),
                    SizedBox(width: 20), // Add some spacing between the fields
                    Expanded(
                      child: TextFormField(
                        controller: _toDateController,
                        decoration: InputDecoration(
                          labelText: 'End Date',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_today),
                            onPressed: () => _selectDate(context, _toDateController),
                          ),
                        ),
                        readOnly: true,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 23.0, right: 23.0, bottom: 30.0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(20), // Add padding to the container
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Debit',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xFF071232),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '08-May-2024',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF4B5060),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  'SALES-',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF4B5060),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '\₹480',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xFF071232),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Paid-',
                            style: GoogleFonts.getFont(
                              'Overpass',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              height: 1.6,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(width: 3,),
                          Text(
                            '7900.00',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF00D259),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 20), // Add some vertical spacing
                      // SizedBox(
                      //   width: double.infinity, // Make the line stretch across the container
                      //   height: 1,
                      //   child: Container(
                      //     color: Color(0xFFE0E0E0), // Add a light gray color to the line
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23.0, right: 23.0, bottom: 30.0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(20), // Add padding to the container
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Debit',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xFF071232),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '10-May-2024',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF4B5060),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  'SALES-',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF4B5060),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '\₹480',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xFF071232),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Unpaid-',
                            style: GoogleFonts.getFont(
                              'Overpass',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              height: 1.6,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 3,),
                          Text(
                            '7900.00',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF00D259),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 20), // Add some vertical spacing
                      // SizedBox(
                      //   width: double.infinity, // Make the line stretch across the container
                      //   height: 1,
                      //   child: Container(
                      //     color: Color(0xFFE0E0E0), // Add a light gray color to the line
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23.0, right: 23.0, bottom: 30.0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(20), // Add padding to the container
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Debit',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xFF071232),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '08-May-2024',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF4B5060),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  'SALES-',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF4B5060),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '\₹480',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xFF071232),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Pending-',
                            style: GoogleFonts.getFont(
                              'Overpass',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              height: 1.6,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(width: 3,),
                          Text(
                            '7900.00',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF00D259),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 20), // Add some vertical spacing
                      // SizedBox(
                      //   width: double.infinity, // Make the line stretch across the container
                      //   height: 1,
                      //   child: Container(
                      //     color: Color(0xFFE0E0E0), // Add a light gray color to the line
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
        
        
              
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () => showHideDotsPopup(),
        child: Icon(Icons.add, color: Colors.white, size: 35),
      ),
    );
  }

}
