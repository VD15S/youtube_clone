class UserModel {
  final String id;
  final String name;
  final String profileUrl;

  UserModel({required this.id, required this.name, required this.profileUrl});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      profileUrl: json['profile_url'],
    );
  }
}
