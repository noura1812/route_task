class ProductsListEntitie {
  List<ProductsEntitie>? products;
  int? total;

  ProductsListEntitie({
    this.products,
    this.total,
  });
}

class ProductsEntitie {
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? thumbnail;

  ProductsEntitie(
      {this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.thumbnail});
}
