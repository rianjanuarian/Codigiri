class RegisterModel {
  String username;
  String password;
  String firstName;
  String lastName;
  int telephone;
  String profileImage;
  String address;
  String city;
  String province;
  String country;

  RegisterModel(
      {required this.username,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.telephone,
      required this.address,
      required this.profileImage,
      required this.city,
      required this.country,
      required this.province});
}
