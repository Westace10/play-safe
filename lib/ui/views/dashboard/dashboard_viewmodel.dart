import 'dart:developer';

import 'package:coinbase_wallet_sdk/coinbase_wallet_sdk.dart';
import 'package:coinbase_wallet_sdk/eth_web3_rpc.dart';
import 'package:flutter/material.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final PageController _controller = PageController();
  PageController get pageController => _controller;

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  Future<void> createWallet() async {
    // To call web3's eth_requestAccounts
    await CoinbaseWalletSDK.shared.isAppInstalled().then((value) async {
      if (value) {
        // log.v(value);
        await CoinbaseWalletSDK.shared.initiateHandshake([
          const RequestAccounts(),
        ]).whenComplete(() => {"hello"});
      } else {
        launchInWebView(Uri.parse(
            "https://play.google.com/store/apps/details?id=org.toshi&hl=en&gl=US"));
        // log.v(!value);
      }
    });
    // await CoinbaseWalletSDK.shared.initiateHandshake([
    //   const RequestAccounts(),
    // ]).whenComplete(() => log("i'm done"));
  }

  Future<void> launchInWebView(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),
    )) {
      throw 'Could not launch $url';
    }
  }

  void onNavBarTap(int value) async {
    if (value == 1) {
      await createWallet().whenComplete(() => log("i'm done"));
    } else {
      _controller.jumpToPage(value);
      _currentIndex = value;
      notifyListeners();
    }
  }

  void goToCreateAccount() {
    _navigationService.navigateTo(Routes.createAccountView);
  }

  void goToAccessAccount() {
    _navigationService.navigateTo(Routes.authenticationView);
  }
}
