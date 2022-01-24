import 'package:flutter/material.dart';
import 'package:my_app/di.dart';
import 'package:my_app/config.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_app/domain/dto/currencies_hive.dart';
import 'package:my_app/presenter/main/main_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_app/generated/locale_keys.g.dart';

void main() async {
  // initilazing easy_localization 
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // initilazing configs 
  init(config: DebugConfig());
  // initilazing hive and his adapters
  await Hive.initFlutter();
  Hive.registerAdapter(CurrenciesHiveAdapter());

  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('ru', 'RU'),
        ],
        path: 'assets/translations',
        fallbackLocale: Locale('ru', 'RU'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static String _title = LocaleKeys.title.tr();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      darkTheme: ThemeData.dark(),
      title: _title,
      home: const MyStatefulWidget(),
    );
  }
}
