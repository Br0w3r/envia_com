class OrderGuide {
  int? id;
  double? amount;
  String? orderGuide;

  OrderGuide({
    this.id,
    this.amount,
    this.orderGuide,
  });

  factory OrderGuide.fromJson(Map<String, dynamic> json) => OrderGuide(
        id: json["id"],
        amount: json["amount"],
        orderGuide: json["orderGuide"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "amount": amount,
        "orderGuide": orderGuide,
      };
}
