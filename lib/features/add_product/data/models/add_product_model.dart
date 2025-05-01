import 'dart:io';

import '../../domain/entities/add_product_entity.dart';

class AddProductModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  String? imageUrl;

  AddProductModel({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.image,
    required this.isFeatured,
    this.imageUrl,
  });

  factory AddProductModel.fromEntity(AddProductEntity addProductEntity) {
    return AddProductModel(
      name: addProductEntity.name,
      code: addProductEntity.code,
      description: addProductEntity.description,
      price: addProductEntity.price,
      image: addProductEntity.image,
      isFeatured: addProductEntity.isFeatured,
      imageUrl: addProductEntity.imageUrl,
    );
  }

  toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
    };
  }
}
