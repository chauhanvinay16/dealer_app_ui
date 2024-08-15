class xhlogin {
  bool? status;
  String? message;
  Data? data;

  xhlogin({this.status, this.message, this.data});

  xhlogin.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? token;
  String? firebaseToken;
  String? customerName;
  String? customerEmail;
  String? customerMobileNo;
  String? customerInitialCode;
  UserDetails? userDetails;

  Data(
      {this.token,
        this.firebaseToken,
        this.customerName,
        this.customerEmail,
        this.customerMobileNo,
        this.customerInitialCode,
        this.userDetails});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    firebaseToken = json['firebase_token'];
    customerName = json['customer_name'];
    customerEmail = json['customer_email'];
    customerMobileNo = json['customer_mobile_no'];
    customerInitialCode = json['customer_initial_code'];
    userDetails = json['user_details'] != null
        ? new UserDetails.fromJson(json['user_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['firebase_token'] = this.firebaseToken;
    data['customer_name'] = this.customerName;
    data['customer_email'] = this.customerEmail;
    data['customer_mobile_no'] = this.customerMobileNo;
    data['customer_initial_code'] = this.customerInitialCode;
    if (this.userDetails != null) {
      data['user_details'] = this.userDetails!.toJson();
    }
    return data;
  }
}

class UserDetails {
  int? id;
  String? code;
  Null? firstName;
  Null? lastName;
  String? fullName;
  int? cutomerType;
  String? email;
  Null? emailVerifiedAt;
  String? mobileNo;
  String? password;
  String? intialCode;
  Null? mobileUniqueId;
  int? stateId;
  int? cityId;
  Null? address;
  Null? userimage;
  int? userType;
  String? walletAmt;
  int? status;
  Null? rememberToken;
  String? createdAt;
  String? updatedAt;
  String? typeName;
  String? discount;
  int? addBy;
  int? updatedBy;

  UserDetails(
      {this.id,
        this.code,
        this.firstName,
        this.lastName,
        this.fullName,
        this.cutomerType,
        this.email,
        this.emailVerifiedAt,
        this.mobileNo,
        this.password,
        this.intialCode,
        this.mobileUniqueId,
        this.stateId,
        this.cityId,
        this.address,
        this.userimage,
        this.userType,
        this.walletAmt,
        this.status,
        this.rememberToken,
        this.createdAt,
        this.updatedAt,
        this.typeName,
        this.discount,
        this.addBy,
        this.updatedBy});

  UserDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    fullName = json['full_name'];
    cutomerType = json['cutomer_type'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    mobileNo = json['mobile_no'];
    password = json['password'];
    intialCode = json['intial_code'];
    mobileUniqueId = json['mobile_unique_id'];
    stateId = json['state_id'];
    cityId = json['city_id'];
    address = json['address'];
    userimage = json['userimage'];
    userType = json['user_type'];
    walletAmt = json['wallet_amt'];
    status = json['status'];
    rememberToken = json['remember_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    typeName = json['type_name'];
    discount = json['discount'];
    addBy = json['add_by'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['full_name'] = this.fullName;
    data['cutomer_type'] = this.cutomerType;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['mobile_no'] = this.mobileNo;
    data['password'] = this.password;
    data['intial_code'] = this.intialCode;
    data['mobile_unique_id'] = this.mobileUniqueId;
    data['state_id'] = this.stateId;
    data['city_id'] = this.cityId;
    data['address'] = this.address;
    data['userimage'] = this.userimage;
    data['user_type'] = this.userType;
    data['wallet_amt'] = this.walletAmt;
    data['status'] = this.status;
    data['remember_token'] = this.rememberToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['type_name'] = this.typeName;
    data['discount'] = this.discount;
    data['add_by'] = this.addBy;
    data['updated_by'] = this.updatedBy;
    return data;
  }
}