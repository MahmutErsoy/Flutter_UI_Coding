// ignore: camel_case_types
class user {
  String name;
  String image;

  user({required this.name, required this.image});
}

// ignore: non_constant_identifier_names
List<user> Users = [
  user(name: "Ayda", image: "assets/image1.jpeg"),
  user(name: "Eymen", image: "assets/image2.jpeg"),
  user(name: "Mahmut", image: "assets/image3.jpeg"),
  user(name: "Ozgur", image: "assets/image4.webp"),
  user(name: "Murat", image: "assets/image5.jpeg"),
  user(name: "Ali", image: "assets/image6.webp"),
  user(name: "Ada", image: "assets/image7.jpeg"),
];
