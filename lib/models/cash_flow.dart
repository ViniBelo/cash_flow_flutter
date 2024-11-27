import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

part 'cash_flow.g.dart';

@JsonSerializable()
class CashFlow {
  const CashFlow({
    this.amount,
    this.type,
    this.source,
    this.expirationDate,
    this.isPaid
  });

  factory CashFlow.fromJson(Map<String, dynamic> json) =>
      _$CashFlowFromJson(json);

  final double? amount;
  final String? type;
  final String? source;
  final DateTime? expirationDate;
  final bool? isPaid;

  Map<String, dynamic> toJson() => _$CashFlowToJson(this);
}