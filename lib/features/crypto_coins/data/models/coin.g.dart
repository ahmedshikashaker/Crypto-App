// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoCoinsResponseModelImpl _$$CryptoCoinsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CryptoCoinsResponseModelImpl(
      data:
          _$JsonConverterFromJson<Map<String, dynamic>, CryptoCoinsResultModel>(
              json['data'], const CoinResultConverter().fromJson),
    );

Map<String, dynamic> _$$CryptoCoinsResponseModelImplToJson(
        _$CryptoCoinsResponseModelImpl instance) =>
    <String, dynamic>{
      'data':
          _$JsonConverterToJson<Map<String, dynamic>, CryptoCoinsResultModel>(
              instance.data, const CoinResultConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
