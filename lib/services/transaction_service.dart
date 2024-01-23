import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shamo/models/cart_model.dart';

class TransactionService {
  String baseUrl = "http://127.0.0.1:8000/api";

  Future<bool> checkout(
      String token, List<CartModel> carts, double totalPrice) async {
    var url = '$baseUrl/checkout';

    var headers = {
      'Content-type': 'application/json',
      'Authorization': token,
    };

    var body = jsonEncode(
      {
        'address': 'Maresemoon',
        'items': carts
            .map(
              (cart) => {
                'id': cart.product.id,
                'quantity': cart.quantity,
              },
            )
            .toList(),
        'status': 'PENDING',
        'total_price': totalPrice,
        'shipping_price': 0,
      },
    );

    print(body);

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('gagal melakukan checkout!');
    }
  }
}
