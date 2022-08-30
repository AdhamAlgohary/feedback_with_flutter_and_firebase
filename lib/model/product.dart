
class Product {
  late String reasonNotSimple;
  late String sugesstion;
  Product({required this.reasonNotSimple, required this.sugesstion, });
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        reasonNotSimple: json['reasonNotSimple'],
        sugesstion: json['sugessttion'],
        );
  }
  Map<String, dynamic> toJson() {
    return {
      'reasonNotSimple': reasonNotSimple,
      'sugesstion': sugesstion,    
    };
  }
}
