// import 'package:dio/dio.dart';

// final String API_BASE_URL = 'http://192.168.1.7';

// final Dio dio = Dio(
//   BaseOptions(
//     baseUrl: API_BASE_URL,
//     connectTimeout: 5000,
//     receiveTimeout: 3000,
//   ),
// );

import 'package:coinbase_wallet_sdk/coinbase_wallet_sdk.dart';
import 'package:coinbase_wallet_sdk/configuration.dart';

configureCoinbase() async {
  // Configure SDK for each platform
  await CoinbaseWalletSDK.shared.configure(
    Configuration(
      ios: IOSConfiguration(
        host: Uri.parse('https://goerli.ethereum.coinbasecloud.net'),
        callback: Uri.parse('tribesxyz://mycallback'),
      ),
      android: AndroidConfiguration(
        domain: Uri.parse('https://goerli.ethereum.coinbasecloud.net'),
      ),
    ),
  );
}
