import 'package:cash_flow/repositories/api_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


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