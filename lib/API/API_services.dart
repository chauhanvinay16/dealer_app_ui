import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices{

  Future<dynamic>LoginAPI(String mobileNo,String password,String deviceToken,String deviceType) async{
     try{
       var response=await http.post(Uri.parse('https://inventory.vibrantcoders.in/public/api/login'),
       headers: {
         'Content-Type': 'application/json',
       },
       body: {
         'mobile_no': mobileNo,
         'password': password,
         'device_token': deviceToken,
         'device_type': deviceType,
           }
       );
       if(response.statusCode==200){
            final logindata=jsonDecode(response.body);
            return logindata;
       }
     }catch(e){
       print(e);
     }
    
}
}
