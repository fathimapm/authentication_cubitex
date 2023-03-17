class UserData {
  UserData({
      String? name, 
      String? email, 
      String? password, 
      String? address,}){
    _name = name;
    _email = email;
    _password = password;
    _address = address;
}

  UserData.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _password = json['password'];
    _address = json['address'];
  }
  String? _name;
  String? _email;
  String? _password;
  String? _address;
UserData copyWith({  String? name,
  String? email,
  String? password,
  String? address,
}) => UserData(  name: name ?? _name,
  email: email ?? _email,
  password: password ?? _password,
  address: address ?? _address,
);
  String? get name => _name;
  String? get email => _email;
  String? get password => _password;
  String? get address => _address;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['password'] = _password;
    map['address'] = _address;
    return map;
  }

}