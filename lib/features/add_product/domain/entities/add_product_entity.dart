import 'dart:io';

class AddProductEntity {
  final String name;
  final String code;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  String? imageUrl;
  final int expirationMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;

  AddProductEntity({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.image,
    required this.isFeatured,
    required this.expirationMonths,
    required this.isOrganic,
    required this.numberOfCalories,
    required this.unitAmount,
    this.imageUrl,
  });
}
