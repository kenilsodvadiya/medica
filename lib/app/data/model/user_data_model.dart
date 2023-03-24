class UserDataModel {
  UserDataModel({
    this.name,
    this.nickName,
    this.dob,
    this.gender,
    this.mobileNo,
    this.email,
    this.password,
    this.image,
  });

  final String? name;
  final String? nickName;
  final String? dob;
  final String? gender;
  final String? mobileNo;
  final String? email;
  final String? password;
  final String? image;

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        name: json["name"],
        nickName: json["nick name"],
        dob: json["dob"],
        gender: json["gender"],
        mobileNo: json["mobile no"],
        email: json["email"],
        password: json["password"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "nick name": nickName,
        "dob": dob,
        "gender": gender,
        "mobile no": mobileNo,
        "email": email,
        "password": password,
        "image": image,
      };
}
