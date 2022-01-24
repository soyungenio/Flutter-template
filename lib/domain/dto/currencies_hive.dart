import 'package:hive/hive.dart';

part 'currencies_hive.g.dart';

@HiveType(typeId: 0)
class CurrenciesHive {
  CurrenciesHive(
      {required this.date,
      required this.rub,
      required this.eur,
      required this.czk});

  @HiveField(0)
  DateTime date;

  @HiveField(1)
  double rub;

  @HiveField(2)
  double eur;

  @HiveField(3)
  double czk;
}
