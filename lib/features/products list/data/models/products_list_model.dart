import 'package:route_task/features/products%20list/domain/entities/products_list_entities.dart';

class ProductsListModel extends ProductsListEntities {
  int? skip;
  int? limit;

  ProductsListModel({super.products, super.total, this.skip, this.limit});

  ProductsListModel.fromJson(Map<String, dynamic> json) {
    if (json["products"] is List) {
      products = json["products"] == null
          ? null
          : (json["products"] as List)
              .map((e) => ProductsModel.fromJson(e))
              .toList();
    }
    if (json["total"] is int) {
      total = json["total"];
    }
    if (json["skip"] is int) {
      skip = json["skip"];
    }
    if (json["limit"] is int) {
      limit = json["limit"];
    }
  }
}

class ProductsModel extends ProductsEntities {
  int? id;
  String? brand;
  String? category;
  List<String>? images;

  ProductsModel(
      {this.id,
      super.title,
      super.description,
      super.price,
      super.discountPercentage,
      super.rating,
      super.stock,
      this.brand,
      this.category,
      super.thumbnail,
      this.images});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["price"] is int) {
      price = json["price"];
    }
    if (json["discountPercentage"] is double) {
      discountPercentage = json["discountPercentage"];
    }
    if (json["rating"] is double) {
      rating = json["rating"];
    }
    if (json["stock"] is int) {
      stock = json["stock"];
    }
    if (json["brand"] is String) {
      brand = json["brand"];
    }
    if (json["category"] is String) {
      category = json["category"];
    }
    if (json["thumbnail"] is String) {
      thumbnail = json["thumbnail"];
    }
    if (json["images"] is List) {
      images =
          json["images"] == null ? null : List<String>.from(json["images"]);
    }
  }
}
