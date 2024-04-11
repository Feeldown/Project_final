import 'dart:convert';
import 'package:coffee_shop/api.dart';
import 'package:http/http.dart' as http;

class CoffeeService {
  Future<List<Coffee>> getCoffees() async {
    final response = await http.get(Uri.parse("https://api.sampleapis.com/coffee/hot"));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<Coffee> coffees = data.map((json) => Coffee.fromJson(json)).toList();
      return coffees;
    } else {
      throw Exception('Failed to load coffees');
    }
  }
}
