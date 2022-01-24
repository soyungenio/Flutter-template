import 'package:dio/dio.dart';
import 'package:my_app/domain/dto/currencies.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET('/latest?base={currency}&symbols=RUB,EUR,CZK&places=2')
  Future<Currencies> getCurrencyInfo(@Path("currency") String currency);
}
