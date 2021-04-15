

class User{
  final int id;
  final String fullName;
  final String email;

  User({
    required this.id,
    required this.fullName,
    required this.email});

  User fromMap(Map<String, dynamic> map){
    return User(
      id: map['id'] as int,
      email: map['email'] as String,
      fullName: map['fullName'] as String
    );
  }

}