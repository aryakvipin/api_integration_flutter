import 'package:api_integration/models/product_models.dart';
import 'package:http/http.dart' as http;

class HttpService {
  // static var client = http.Client();

  static Future<List<Prodct_model>> fetchProducts() async {
    var response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      var data = response.body;
      return Prodct_modelFromJson(data);
    } else {
       throw Exception();

    }
  }
}
