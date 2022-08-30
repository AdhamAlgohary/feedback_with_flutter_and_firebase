import 'package:feedback_with_mvvm/model/product.dart';

abstract class Repo {
  Future<List?> getAllProducts();
  Future<void> addProduct(Product product);
  Future<void> deleteProduct(String id);
  Future<void> updateProduct(String id , Product product);
}
