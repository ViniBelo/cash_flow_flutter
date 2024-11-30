
import 'package:json_annotation/json_annotation.dart';

part 'cash_flow.g.dart';

@JsonSerializable()
class CashFlow {
  const CashFlow({
    this.amount,
    this.type,
    this.source,
    this.expirationDate,
  });

  factory CashFlow.fromJson(Map<String, dynamic> json) =>
      _$CashFlowFromJson(json);

  final double? amount;
  final String? type;
  final String? source;
  final DateTime? expirationDate;

  Map<String, dynamic> toJson() => _$CashFlowToJson(this);
}