// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_flow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashFlow _$CashFlowFromJson(Map<String, dynamic> json) => CashFlow(
      amount: (json['amount'] as num?)?.toDouble(),
      type: json['type'] as String?,
      source: json['source'] as String?,
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$CashFlowToJson(CashFlow instance) => <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
      'source': instance.source,
      'expirationDate': instance.expirationDate?.toIso8601String(),
    };
