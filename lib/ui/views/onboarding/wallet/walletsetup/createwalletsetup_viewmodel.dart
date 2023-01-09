// import 'package:coinbase_wallet_sdk/coinbase_wallet_sdk.dart';
// import 'package:coinbase_wallet_sdk/eth_web3_rpc.dart';
// import 'package:flutter_web3/flutter_web3.dart';
import 'dart:developer';

import 'package:coinbase_wallet_sdk/coinbase_wallet_sdk.dart';
import 'package:coinbase_wallet_sdk/eth_web3_rpc.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
// import 'package:web3dart/web3dart.dart';

class CreateWalletSetupModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String _privateAddress = '';
  String get privateAddress => _privateAddress;

  String _publicAddress = '';
  String get publicAddress => _publicAddress;

  void goToWalletPhrase() {
    _navigationService.navigateTo(Routes.createWalletPhraseView);
  }

  void createWallet() async {
    // final response = await CoinbaseWalletSDK.shared.initiateHandshake([
    //   // PersonalSign(address: "", message: ""),
    //   const RequestAccounts(),
    // ]);

    // To call web3's eth_requestAccounts
    await CoinbaseWalletSDK.shared.initiateHandshake([
      const RequestAccounts(),
    ]).whenComplete(() => log("i'm done"));

    // final walletAddress = response[0].value;

    // // to call web3's personalSign
    // final response2 = await CoinbaseWalletSDK.shared.makeRequest(
    //   Request(
    //     actions: [
    //       PersonalSign(address: walletAddress!, message: ""),
    //     ],
    //   ),
    // );

    // final signature = response[0].value;

    // WalletAddress service = WalletAddress();
    // final mnemonic = service.generateMnemonic();
    // final privateKey = await service.getPrivateKey(mnemonic);
    // final publicKey = await service.getPublicKey(privateKey);
    // _privateAddress = privateKey;
    // _publicAddress = publicKey.toString();
    // notifyListeners();

    // final response = ethereum!.request<BigInt>('');
    // final rpcProvider = JsonRpcProvider();
    // const mnemonics =
    //     "total mass illegal supreme mandate roof okay guard tide tip orient misery";
    // final wallet = Wallet.fromMnemonic(mnemonics);
    // print(wallet.privateKey);
    // final anotherWallet = Wallet(wallet.privateKey);
    // print(anotherWallet);

    // print(response);
  }
}
