
class UserInfo {
  String name;
  String email;
  String photoUrl;
  String provider;
  String id;

  UserInfo({this.name,this.email,this.photoUrl,this.provider,this.id, 
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
  return UserInfo(
      name: json['name'] as String,
      email: json['email'] as String,
      photoUrl: json['photoUrl'] as String,
      provider: json['provider'] as String,
      id: json['_id'] as String,
  );
}


  

  
}