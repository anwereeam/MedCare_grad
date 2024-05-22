class Lab {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String pictureUrl;
  final String location;

  Lab({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.pictureUrl,
    required this.location,
  });

  factory Lab.fromJson(Map<String, dynamic> json) {
    return Lab(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      pictureUrl: json['pictureUrl'],
      location: json['location'],
    );
  }
}

class LabTestModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final Lab lab;
  final String imageUrl;

  LabTestModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.lab,
    required this.imageUrl,
  });

  factory LabTestModel.fromJson(Map<String, dynamic> json) {
    return LabTestModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      lab: Lab.fromJson(json['lab']),
      imageUrl: json['imageUrl'],
    );
  }
}
