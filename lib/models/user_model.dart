class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilePhotoURL;
  String token;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.username,
      this.profilePhotoURL,
      this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePhotoURL = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,   
      'email': email,
      'username': username,
      'profil_photo_url': profilePhotoURL,
      'token': token
    };
  }
}
