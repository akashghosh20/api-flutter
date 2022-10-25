import 'package:ecommecre_test/model/product_model.dart';
import 'package:http/http.dart';

class APiServices {
  String API_ENDPOINT = "https://5taka.com/api/products";

  Future<ProductModel?> getProduct() async {
    var response = await get(Uri.parse(API_ENDPOINT));
    if (response.statusCode == 200) {
      return productModelFromJson(response.body);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
