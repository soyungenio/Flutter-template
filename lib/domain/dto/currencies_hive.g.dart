// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrenciesHiveAdapter extends TypeAdapter<CurrenciesHive> {
  @override
  final int typeId = 0;

  @override
  CurrenciesHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrenciesHive(
      date: fields[0] as DateTime,
      rub: fields[1] as double,
      eur: fields[2] as double,
      czk: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, CurrenciesHive obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.rub)
      ..writeByte(2)
      ..write(obj.eur)
      ..writeByte(3)
      ..write(obj.czk);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrenciesHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
