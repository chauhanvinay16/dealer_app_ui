// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// import 'package:xh_dealer/dashbord/home_screen.dart';
//
// void main() {
//   runApp(MyApp5());
// }
//
// class MyApp5 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Login Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: LoginPage1(),
//     );
//   }
// }
//
// class LoginPage1 extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage1> {
//   final _mobileController = TextEditingController();
//   final _passwordController = TextEditingController();
//
//   // Future<void> loginApi() async {
//   //   final apiUrl = 'https://inventory.vibrantcoders.in/public/api/login';
//   //   final mobileNo = _mobileController.text;
//   //   final password = _passwordController.text;
//   //   final deviceToken = '12345678910';
//   //   final deviceType = '1';
//   //
//   //   final headers = {
//   //     'Content-Type': 'application/json',
//   //   };
//   //
//   //   final body = jsonEncode({
//   //     'mobile_no': mobileNo,
//   //     'password': password,
//   //     'device_token': deviceToken,
//   //     'device_type': deviceType,
//   //   });
//   //
//   //   final response = await http.post(Uri.parse(apiUrl), headers: headers, body: body);
//   //
//   //   if (response.statusCode == 200) {
//   //     final responseBody = jsonDecode(response.body);
//   //     print('Login successful: $responseBody');
//   //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
//   //   } else {
//   //     print('Error: ${response.statusCode}');
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Login Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Mobile Number'),
//             TextField(
//               controller: _mobileController,
//               decoration: InputDecoration(
//                 hintText: 'Enter your mobile number',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Text('Password'),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 hintText: 'Enter your password',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () async {
//                   await loginApi();
//                 },
//                 child: Text('Login'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }