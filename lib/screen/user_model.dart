class UserModel {
  String id;
  final String? fullName;
  final String? jobTitle;
  final String? description;
  final String? phoneNumber;
  final String? profilePictureURL;

  UserModel({
    this.id = '',
    required this.fullName,
    required this.jobTitle,
    required this.description,
    required this.phoneNumber,
    required this.profilePictureURL,
  });

  factory UserModel.fromFirestore(
    Map<String, dynamic> snapshot,
    // SnapshotOptions? options,
  ) {
    return UserModel(
      id: snapshot['id'],
      fullName: snapshot['fullName'],
      jobTitle: snapshot['jobTitle'],
      description: snapshot['description'],
      phoneNumber: snapshot['phoneNumber'],
      profilePictureURL: snapshot['profilePictureURL'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "fullName": fullName,
      "jobTitle": jobTitle,
      "description": description,
      "phoneNumber": phoneNumber,
      "profilePictureURL": profilePictureURL,
    };
  }
}
