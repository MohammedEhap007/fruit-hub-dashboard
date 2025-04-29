import 'dart:io';

class AddProductInputEntity {
  String name;
  String code;
  String description;
  num price;
  File image;
  bool isFeatured;
  String? imageUrl;

  AddProductInputEntity({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.image,
    required this.isFeatured,
    this.imageUrl,
  });
}
