import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';
class ProductModel extends Product {
  ProductModel({required int id, required String name, required double price, required String image})
      : super(id: id, name: name, price: price, image: image);

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }
}