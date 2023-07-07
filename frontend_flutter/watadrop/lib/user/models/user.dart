import 'dart:convert';

class UserLogin {
  String username;
  String password;

  UserLogin({required this.username, required this.password});

  Map <String, dynamic> toDatabaseJson() => {
    "username": this.username,
    "password": this.password
  };
}


class User{

  String username;
  String name;
  String last_name;
  String email;

  User({
    required this.username,
    required this.name,
    required this.last_name,
    required this.email,
  });

  User copyWith({
    String? username,
    String? name,
    String? last_name,
    String? email,
  }){
    return User(
      username: username ?? this.username,
      name: name ?? this.name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'username': username,
      'name': name,
      'last_name': last_name,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      username: map['username'],
      name: map['name'],
      last_name: map['last_name'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(
      json.decode(source));

}

class Token{
  String token;

  Token({required this.token});

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(
        token: json['token']
    );
  }
}