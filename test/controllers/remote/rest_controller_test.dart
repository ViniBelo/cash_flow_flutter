import 'package:cash_flow/controllers/api_controller.dart';
import 'package:cash_flow/repositories/api_repository.dart';
import 'package:cash_flow/source/remote/api_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'rest_controller_test.mocks.dart';

@GenerateMocks([ApiRepository, ApiClient])
void main() {
  late MockApiRepository apiRepository;

  setUp(() {
    apiRepository = MockApiRepository();
    Get.put<ApiRepository>(apiRepository);
  });

  test('fetchEuroToDollarConversion', () async {
    const double fakeQuotation = 1.14;

    when(apiRepository.getEuroToDollar()).thenAnswer((_) async {
      return fakeQuotation;
    });

    ApiController controller = ApiController(repository: apiRepository);

    // Verify if initial value is 0.0
    expect(controller.euroToDollar.value, 0.0);

    // Runs the function to get the conversion
    await controller.fetchEuroToDollarConversion();

    // Assert if fake quotation was assigned to controller.euroToDollar.value
    expect(controller.euroToDollar.value, fakeQuotation);
  });

  test('check if controller.euroToDollar.value keeps 0.0 with no api response', () async {
    ApiController controller = ApiController(repository: apiRepository);

    // Verify if initial value is 0.0
    expect(controller.euroToDollar.value, 0.0);

    // Runs the function to get the conversion
    controller.fetchEuroToDollarConversion();

    // Verify value is still 0.0
    expect(controller.euroToDollar.value, 0.0);
  });
}