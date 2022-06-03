class LastSales {
  int amount = 0;
  String consumer = '';
  String consumerAvatar = '';
  String receivedBy = '';
  String date = '';
  String type = '';

  LastSales(
      {this.amount = 0,
      this.consumer = '',
      this.consumerAvatar = '',
      this.receivedBy = '',
      this.date = '',
      this.type = ''});

  LastSales.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    consumer = json['consumer'];
    consumerAvatar = json['consumer_avatar'];
    receivedBy = json['received_by'];
    date = json['date'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['consumer'] = this.consumer;
    data['consumer_avatar'] = this.consumerAvatar;
    data['received_by'] = this.receivedBy;
    data['date'] = this.date;
    data['type'] = this.type;
    return data;
  }
}
