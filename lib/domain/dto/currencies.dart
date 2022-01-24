import 'package:json_annotation/json_annotation.dart';

part 'currencies.g.dart';


@JsonSerializable()
class Rate{
  @JsonKey(name: 'CZK')
  final double czk;
  @JsonKey(name: 'EUR')
  final double eur; 
  @JsonKey(name: 'RUB')
  final double rub;

  const Rate(this.czk, this.eur, this.rub);

    factory Rate.fromJson(Map<String, dynamic> json) =>
    _$RateFromJson(json);

  Map<String, dynamic> toJson() => _$RateToJson(this);
}

@JsonSerializable()
class Currencies {
  final DateTime date; 
  final Rate rates;

  const Currencies(this.date, this.rates);

  factory Currencies.fromJson(Map<String, dynamic> json) =>
    _$CurrenciesFromJson(json);

  Map<String, dynamic> toJson() => _$CurrenciesToJson(this);
}
