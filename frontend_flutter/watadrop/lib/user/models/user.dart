import 'dart:convert';

class User{

  int id;
  String username;
  String first_name;
  String last_name;
  String email;
  String password;

  User({
    required this.id,
    required this.username,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.password,
  });

  User copyWith({
    int? id,
    String? username,
    String? first_name,
    String? last_name,
    String? email,
    String? password,
  }){
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'username': username,
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      username: map['username'],
      first_name: map['first_name'],
      last_name: map['last_name'],
      email: map['email'],
      password: map['password'],

    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(
      json.decode(source));

}

