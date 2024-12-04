import 'package:cash_flow/repositories/api_repository.dart';
import 'package:get/get.dart';


class ApiController extends GetxController {
  ApiController({required this.repository});
  final RxDouble euroToDollar = 0.0.obs;

  final ApiRepository repository;

  @override
  void onInit() {
    super.onInit();
    fetchEuroToDollarConversion();
  }

  Future<void> fetchEuroToDollarConversion() async {
    try {
      final conversion = await repository.getEuroToDollar();
      euroToDollar.value = conversion;
    } catch (e) {
      euroToDollar.value = 0.0;
    }
  }
}