import 'dart:convert';
import 'package:feedback_with_mvvm/model/product.dart';
import 'package:feedback_with_mvvm/repository/repo.dart';
import 'package:feedback_with_mvvm/utilis/Constans.dart';
import 'package:http/http.dart' as http;

class Api implements Repo {
  @override
  Future<void> addProduct(Product product) async {
    try {
      http.Response response = await http.post(Uri.parse(url),
          headers: {"content-type": "application/json"},
          body: jsonEncode(product.toJson()));
      kdebugCheck(response.body);
    } catch (e) {
      kdebugCheck(e);
    }
  }

  @override
  Future<void> deleteProduct(String id) async {
    try {
      http.Response response = await http.delete(Uri.parse(url + '/' + id));
      kdebugCheck(response);
    } catch (e) {
      kdebugCheck(e);
    }
  }

  @override
  Future<List?> getAllProducts() async {
    List? products = [];
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == success) {
        products = jsonDecode(response.body);
      }
    } catch (e) {
      kdebugCheck(e);
    }
    return products;
  }

  @override
  Future<void> updateProduct(String id, Product product) async {
    try {
      http.Response response = await http.patch(Uri.parse(url + "/" + id),
          headers: {"content-type": "application/json"},
          body: jsonEncode(product.toJson()));
      kdebugCheck(response.body);
    } catch (e) {
      kdebugCheck(e);
    }
  }
}
