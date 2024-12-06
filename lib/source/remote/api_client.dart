import 'package:get/get_connect/connect.dart';

class ApiClient extends GetConnect {
  Future<double> getEuroToDollar() async {
    final euroToDollarConversion = await
    get("https://cdn.jsdelivr.net/npm/@fawazahmed0/currency-api@latest/v1/currencies/eur.json");
    return euroToDollarConversion.body['eur']['usd'];
  }
}