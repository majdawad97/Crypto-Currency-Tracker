import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '80B1F53E-E9F8-421A-A85B-03F14D1CDD76';

class CoinData {
  // Future getCoinData() async {
  //   String requestURL = '$coinAPIURL/BTC/USD?apikey=$apiKey';
  //   http.Response response = await http.get(
  //     Uri.parse(requestURL),
  //   );

  //   print(response.body);
  //   if (response.statusCode == 200) {
  //     var decodedData = jsonDecode(response.body);
  //     var lastPrice = decodedData['rate'];
  //     return lastPrice;
  //   } else {
  //     return 0;
  //     print('error');
  //   }
  // }

  Future getBTCValue(value) async {
    String requestURL = '$coinAPIURL/BTC/$value?apikey=$apiKey';
    http.Response response = await http.get(
      Uri.parse(requestURL),
    );

    print(response.body);
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    } else {
      print('error');
    }
  }

  Future getETHValue(value) async {
    String requestURL = '$coinAPIURL/ETH/$value?apikey=$apiKey';
    http.Response response = await http.get(
      Uri.parse(requestURL),
    );

    print(response.body);
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    } else {
      print('error');
    }
  }

  Future getLTCValue(value) async {
    String requestURL = '$coinAPIURL/LTC/$value?apikey=$apiKey';
    http.Response response = await http.get(
      Uri.parse(requestURL),
    );

    print(response.body);
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    } else {
      print('error');
    }
  }
}
