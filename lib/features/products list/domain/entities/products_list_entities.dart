class ProductsListEntities {
  List<ProductsEntities>? products;
  int? total;

  ProductsListEntities({
    this.products,
    this.total,
  });
}

class ProductsEntities {
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? thumbnail;

  ProductsEntities(
      {this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.thumbnail});
}
