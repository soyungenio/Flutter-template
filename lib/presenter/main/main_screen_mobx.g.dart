// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_screen_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainScreenMobX on _MainScreenMobX, Store {
  final _$currenciesAtom = Atom(name: '_MainScreenMobX.currencies');

  @override
  CurrenciesHive? get currencies {
    _$currenciesAtom.reportRead();
    return super.currencies;
  }

  @override
  set currencies(CurrenciesHive? value) {
    _$currenciesAtom.reportWrite(value, super.currencies, () {
      super.currencies = value;
    });
  }

  final _$isLoadedCurrenciesAtom =
      Atom(name: '_MainScreenMobX.isLoadedCurrencies');

  @override
  bool get isLoadedCurrencies {
    _$isLoadedCurrenciesAtom.reportRead();
    return super.isLoadedCurrencies;
  }

  @override
  set isLoadedCurrencies(bool value) {
    _$isLoadedCurrenciesAtom.reportWrite(value, super.isLoadedCurrencies, () {
      super.isLoadedCurrencies = value;
    });
  }

  final _$loadCurrenciesInfoAsyncAction =
      AsyncAction('_MainScreenMobX.loadCurrenciesInfo');

  @override
  Future<void> loadCurrenciesInfo(String currency) {
    return _$loadCurrenciesInfoAsyncAction
        .run(() => super.loadCurrenciesInfo(currency));
  }

  @override
  String toString() {
    return '''
currencies: ${currencies},
isLoadedCurrencies: ${isLoadedCurrencies}
    ''';
  }
}
