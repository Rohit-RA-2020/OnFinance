import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:candlesticks/candlesticks.dart';
import 'package:flutter/material.dart';
class CandleStickChart extends StatefulWidget {
  const CandleStickChart({super.key});

  @override
  State<CandleStickChart> createState() => _CandleStickChartState();
}

class _CandleStickChartState extends State<CandleStickChart> {
  List<Candle> candles = [];

  @override
  void initState() {
    fetchCandles().then((value) {
      setState(() {
        candles = value;
      });
    });
    super.initState();
  }

  Future<List<Candle>> fetchCandles() async {
    final uri = Uri.parse(
        "https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=1h");
    final res = await http.get(uri);
    return (jsonDecode(res.body) as List<dynamic>)
        .map((e) => Candle.fromJson(e))
        .toList()
        .reversed
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Candlesticks(
            candles: candles,
          ),
        ),
      ),
    );
  }
}
