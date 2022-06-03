import 'package:hands_on/pages/transactions_page.dart';

class Resume {
  int balance = 0;
  int unavaliableBalance = 0;
  int futureValue = 0;
  List<LastSales> lastSales = [];

  Resume({
    this.balance = 0,
    this.unavaliableBalance = 0,
    this.futureValue = 0,
  });

  Resume.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
    unavaliableBalance = json['unavaliableBalance'];
    futureValue = json['futureValue'];
    if (json['lastSales'] != null) {
      lastSales = [];
      json['lastSales'].forEach((v) {
        lastSales.add(LastSales.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['balance'] = balance;
    data['unavaliableBalance'] = unavaliableBalance;
    data['futureValue'] = futureValue;
    data['lastSales'] = lastSales.map((v) => v.toJson()).toList();

    return data;
  }
}
