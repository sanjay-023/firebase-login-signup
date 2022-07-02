class UserModel {
  String? uid;
  String? name;
  String? email;
  String? phone;

  UserModel({this.uid, this.name, this.email, this.phone});

//receiving data from firestore
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map["uid"],
        name: map["name"],
        email: map["email"],
        phone: map["phone"]);
  }

  // sending data to firestore
  Map<String, dynamic> toMap() {
    return {'uid': uid, 'name': name, 'email': email, 'phone': phone};
  }
}
