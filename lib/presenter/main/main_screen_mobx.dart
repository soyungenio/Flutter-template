import 'package:my_app/data/repository/interface/repository.dart';
import 'package:my_app/di.dart';
import 'package:mobx/mobx.dart';
import 'package:my_app/domain/dto/currencies_hive.dart';

part 'main_screen_mobx.g.dart';

class MainScreenMobX = _MainScreenMobX with _$MainScreenMobX;

abstract class _MainScreenMobX with Store {
  final repo = injector.get<Repository>();

  @observable
  CurrenciesHive? currencies;

  @observable
  bool isLoadedCurrencies = false;

  @action
  Future<void> loadCurrenciesInfo(String currency) async {
    currencies = await repo.getCurrencyInfo(currency);
    isLoadedCurrencies = true;
  }
}
