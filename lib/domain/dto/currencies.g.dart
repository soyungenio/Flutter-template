// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rate _$RateFromJson(Map<String, dynamic> json) => Rate(
      (json['CZK'] as num).toDouble(),
      (json['EUR'] as num).toDouble(),
      (json['RUB'] as num).toDouble(),
    );

Map<String, dynamic> _$RateToJson(Rate instance) => <String, dynamic>{
      'CZK': instance.czk,
      'EUR': instance.eur,
      'RUB': instance.rub,
    };

Currencies _$CurrenciesFromJson(Map<String, dynamic> json) => Currencies(
      DateTime.parse(json['date'] as String),
      Rate.fromJson(json['rates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrenciesToJson(Currencies instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'rates': instance.rates,
    };
