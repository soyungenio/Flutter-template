import 'package:my_app/data/dio/rest_client.dart';
import 'package:my_app/data/repository/interface/repository.dart';
import 'package:my_app/domain/dto/currencies.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_app/domain/dto/currencies_hive.dart';
import 'package:my_app/hive_boxes.dart';


class RepositoryImpl extends Repository {
  RestClient client;
  CurrenciesHive? currencies;

  RepositoryImpl(this.client);

  @override
  Future<CurrenciesHive?> getCurrencyInfo(String currency) async {
    if (currencies != null) {
      return Future.value(currencies);
    }
    // Open box to get latest the known info
    Box<CurrenciesHive> currBox =
        await Hive.openBox<CurrenciesHive>(HiveBoxes.currencies);
    if (currBox.isEmpty) {
      // Uploading latest currencies
      Currencies curr = await client.getCurrencyInfo(currency);
      CurrenciesHive currHive = CurrenciesHive(date: curr.date, rub: curr.rates.rub, eur: curr.rates.eur, czk: curr.rates.czk);
      // Saving to a box
      await currBox.add(currHive);
    }
    currencies = currBox.get(0)!;
    currBox.close();
    return currencies;
  }
}
