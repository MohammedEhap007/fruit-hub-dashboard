import 'package:fruit_hub_dashboard/features/add_product/domain/entities/review_entity.dart';

class ReviewModel {
  final String name;
  final String image;
  final num rating;
  final String date;
  final String reviewDescription;

  ReviewModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.date,
    required this.reviewDescription,
  });

  factory ReviewModel.fromEntity(ReviewEntity reviewEntity) => ReviewModel(
    name: reviewEntity.name,
    image: reviewEntity.image,
    rating: reviewEntity.rating,
    date: reviewEntity.date,
    reviewDescription: reviewEntity.reviewDescription,
  );

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
    name: json['name'],
    image: json['image'],
    rating: json['rating'],
    date: json['date'],
    reviewDescription: json['reviewDescription'],
  );
  toJson() => {
    'name': name,
    'image': image,
    'rating': rating,
    'date': date,
    'reviewDescription': reviewDescription,
  };
}
