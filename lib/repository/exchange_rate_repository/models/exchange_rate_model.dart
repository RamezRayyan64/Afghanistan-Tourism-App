class ExchangeRateModel {
  late final num _afn;
  late final num _eur;

  ExchangeRateModel();

  ExchangeRateModel.fromMap(Map<dynamic, dynamic> json) {
    _afn = json['AFN'];
    _eur = json['EUR'];
  }

  num getAFN() => _afn;
  num getEUR() => _eur;
}
