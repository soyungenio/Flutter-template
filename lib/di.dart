import 'package:dio/dio.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:my_app/config.dart';
import 'package:my_app/data/dio/rest_client.dart';
import 'package:my_app/data/repository/impl/repository_impl.dart';
import 'package:my_app/data/repository/interface/repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Injector _injector = Injector();

void init({required Config config}) {

  injector.map<Config>((injector) => config);
  final dio = Dio(BaseOptions(baseUrl: config.baseUrl));
  dio.interceptors.add(PrettyDioLogger());
  _injector.map<RestClient>((injector) => RestClient(dio));
  _injector.map<Repository>(
      (injector) => RepositoryImpl(injector.get<RestClient>()));
}

Injector get injector => _injector;
