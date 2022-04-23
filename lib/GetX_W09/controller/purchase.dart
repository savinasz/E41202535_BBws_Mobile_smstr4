import 'package:minggu7/GetX_W09/model/product.dart';
import 'package:get/get.dart';

class Purchase extends GetxController{
  var products = <Product>[].obs;
  void onInit(){
    fetchProducts();
    super.onInit();
  }
  void fetchProducts() async{
    await Future.delayed(Duration(seconds: 1));

    var serverResponse=[
      Product(1, "Demo Product", "aby", "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "aby", "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "aby", "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "aby", "This is a Product that we are going to show by getX", 300.0),
      Product(1, "Demo Product", "aby", "This is a Product that we are going to show by getX", 300.0),
    ];

    products.value = serverResponse;
  }
}

