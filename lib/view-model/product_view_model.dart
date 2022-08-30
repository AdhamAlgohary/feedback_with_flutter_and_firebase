import 'package:feedback_with_mvvm/repository/services/api.dart';
import 'package:flutter/cupertino.dart';
import '../utilis/Constans.dart';
import '../model/product.dart';
import '../repository/repo.dart';

class ProductViewModel with ChangeNotifier {
  Repo productRepo = Api();
  late List<Product> _product;
  
  late int index;
  late String reasonNotSimple;
  late String sugesstion;
  List<Map> listTileContent = [
    toMap(
      "After graduation",
      "Eng:Mohamed ",
      "images/graduate.jpg",
    ),
    toMap(
      "After graduation",
      "Eng:Roaa ",
      "images/graduate.jpg",
    ),
    toMap(
      "Proplem Solving",
      "Eng:Dana",
      "images/proplemsolving.jpg",
    ),
    toMap(
      "Proplem Solving",
      "Eng:Roaa ",
      "images/proplemsolving.jpg",
    ),
    toMap(
      "Ui-Ux",
      "Eng:Asmaa",
      "images/ui.jpg",
    ),
    toMap(
      "Mobile-Front end",
      "Eng:Roaa ",
      "images/android.jpg",
    ),
    toMap("Web-Front end", "Mostafa", "images/backend.jpg"),
    toMap(
      "Backend(python)",
      "Eng:Dana",
      "images/pythone.jpg",
    ),
    toMap(
      "Business Analysis",
      "Eng:Roaa ",
      "images/business analysis.png",
    ),
  ];
  ProductViewModel();

  Future<void> getAllProducts() async {
    List? listOfProducts = await productRepo.getAllProducts();
    _product
        .addAll(listOfProducts!.map((item) => Product.fromJson(item)).toList());

    notifyListeners();
    kdebugCheck(_product);
  }

  Future<void> addProduct() async {
    await productRepo.addProduct(
        Product(reasonNotSimple: reasonNotSimple, sugesstion: sugesstion));

    notifyListeners();
    kdebugCheck(_product);
  }
}
