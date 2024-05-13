import 'dart:convert';

OrderModel orderModelFromJson(String str) =>
    OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
  String? id;
  int? quantity;
  double? amount;

  OrderModel({
    this.id,
    this.quantity,
    this.amount,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json["id"],
        quantity: json["quantity"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quantity": quantity,
        "amount": amount,
      };
}
