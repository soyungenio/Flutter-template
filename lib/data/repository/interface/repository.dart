import 'package:my_app/domain/dto/currencies_hive.dart';


abstract class Repository{
  Future<CurrenciesHive?> getCurrencyInfo(String currency);
}