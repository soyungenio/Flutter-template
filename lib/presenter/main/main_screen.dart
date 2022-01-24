import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_app/domain/dto/currencies_hive.dart';
import 'package:my_app/presenter/main/main_screen_mobx.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_app/generated/locale_keys.g.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  late MainScreenMobX mobx;

  @override
  void initState() {
    super.initState();
    mobx = MainScreenMobX()..loadCurrenciesInfo('USD');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.title.tr()),
      ),
      body: SafeArea(
        child: Observer(
          builder: (context) {
            if (mobx.isLoadedCurrencies) {
              return getCurrencies();
            }
            return _buildLoading();
          },
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget getCurrencies() {
    CurrenciesHive? currencies = mobx.currencies;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Date: '), Text(currencies!.date.toString())],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('RUB: '), Text(currencies.rub.toString())],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('EUR: '), Text(currencies.eur.toString())],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('CZK: '), Text(currencies.czk.toString())],
        ),
      ],
    );
  }
}
