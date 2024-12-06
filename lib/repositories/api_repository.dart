
import '../source/remote/api_client.dart';

class ApiRepositoryImpl implements ApiRepository {
  final ApiClient apiClient;

  ApiRepositoryImpl({required this.apiClient});

  @override
  Future<double> getEuroToDollar() {
    return apiClient.getEuroToDollar();
  }
}

abstract class ApiRepository {
  Future<double> getEuroToDollar();
}