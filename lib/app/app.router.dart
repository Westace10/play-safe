// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i29;
import 'package:flutter/material.dart';
import 'package:play_safe/ui/views/authentication/authentication_view.dart'
    as _i11;
import 'package:play_safe/ui/views/dashboard/dappspage/dapps_view.dart' as _i16;
import 'package:play_safe/ui/views/dashboard/dashboard_view.dart' as _i12;
import 'package:play_safe/ui/views/dashboard/gamespage/allgames/allgames_view.dart'
    as _i27;
import 'package:play_safe/ui/views/dashboard/gamespage/games_view.dart' as _i15;
import 'package:play_safe/ui/views/dashboard/gamespage/gamesinfo/gamesinfo_view.dart'
    as _i28;
import 'package:play_safe/ui/views/dashboard/homepage/home_view.dart' as _i13;
import 'package:play_safe/ui/views/dashboard/settingspage/settings_view.dart'
    as _i17;
import 'package:play_safe/ui/views/dashboard/walletpage/addremovetoken/addremove_token_view.dart'
    as _i18;
import 'package:play_safe/ui/views/dashboard/walletpage/buytoken/buy_token_view.dart'
    as _i23;
import 'package:play_safe/ui/views/dashboard/walletpage/receivetoken/receive_token_view.dart'
    as _i22;
import 'package:play_safe/ui/views/dashboard/walletpage/sendtoken/send_token_view.dart'
    as _i21;
import 'package:play_safe/ui/views/dashboard/walletpage/swaptoken/swap_token_view.dart'
    as _i20;
import 'package:play_safe/ui/views/dashboard/walletpage/tokeninfo/token_info_view.dart'
    as _i19;
import 'package:play_safe/ui/views/dashboard/walletpage/tokenview/token_view.dart'
    as _i26;
import 'package:play_safe/ui/views/dashboard/walletpage/tokenview/tokendetails/tokendetails_view.dart'
    as _i24;
import 'package:play_safe/ui/views/dashboard/walletpage/tokenview/tokensummary/tokensummary_view.dart'
    as _i25;
import 'package:play_safe/ui/views/dashboard/walletpage/walletpage_view.dart'
    as _i14;
import 'package:play_safe/ui/views/onboarding/createaccount/createaccount_view.dart'
    as _i5;
import 'package:play_safe/ui/views/onboarding/createpin/createpin_view.dart'
    as _i6;
import 'package:play_safe/ui/views/onboarding/getstarted/getstarted_view.dart'
    as _i4;
import 'package:play_safe/ui/views/onboarding/onboarding_view/onboarding_view.dart'
    as _i3;
import 'package:play_safe/ui/views/onboarding/wallet/confirmwalletphrase/confirmwalletphrase_view.dart'
    as _i9;
import 'package:play_safe/ui/views/onboarding/wallet/createwalletphrase/createwalletphrase_view.dart'
    as _i8;
import 'package:play_safe/ui/views/onboarding/wallet/walletsetup/createwalletsetup_view.dart'
    as _i7;
import 'package:play_safe/ui/views/onboarding/wallet/walletsuccess/walletsuccess_view.dart'
    as _i10;
import 'package:play_safe/ui/views/startup/startup_view.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i30;

class Routes {
  static const startupView = '/';

  static const onBoardingView = '/on-boarding-view';

  static const getStartedView = '/get-started-view';

  static const createAccountView = '/create-account-view';

  static const createPinView = '/create-pin-view';

  static const createWalletSetupView = '/create-wallet-setup-view';

  static const createWalletPhraseView = '/create-wallet-phrase-view';

  static const confirmWalletPhraseView = '/confirm-wallet-phrase-view';

  static const walletSuccessView = '/wallet-success-view';

  static const authenticationView = '/authentication-view';

  static const dashboardView = '/dashboard-view';

  static const homeView = '/home-view';

  static const walletPageView = '/wallet-page-view';

  static const gamesView = '/games-view';

  static const dappsView = '/dapps-view';

  static const settingsView = '/settings-view';

  static const addRemoveTokenView = '/add-remove-token-view';

  static const tokenInfoView = '/token-info-view';

  static const swapTokenView = '/swap-token-view';

  static const sendTokenView = '/send-token-view';

  static const receiveTokenView = '/receive-token-view';

  static const buyTokenView = '/buy-token-view';

  static const tokenDetailsView = '/token-details-view';

  static const tokenSummaryView = '/token-summary-view';

  static const tokenView = '/token-view';

  static const allGamesView = '/all-games-view';

  static const gamesInfoView = '/games-info-view';

  static const all = <String>{
    startupView,
    onBoardingView,
    getStartedView,
    createAccountView,
    createPinView,
    createWalletSetupView,
    createWalletPhraseView,
    confirmWalletPhraseView,
    walletSuccessView,
    authenticationView,
    dashboardView,
    homeView,
    walletPageView,
    gamesView,
    dappsView,
    settingsView,
    addRemoveTokenView,
    tokenInfoView,
    swapTokenView,
    sendTokenView,
    receiveTokenView,
    buyTokenView,
    tokenDetailsView,
    tokenSummaryView,
    tokenView,
    allGamesView,
    gamesInfoView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.onBoardingView,
      page: _i3.OnBoardingView,
    ),
    _i1.RouteDef(
      Routes.getStartedView,
      page: _i4.GetStartedView,
    ),
    _i1.RouteDef(
      Routes.createAccountView,
      page: _i5.CreateAccountView,
    ),
    _i1.RouteDef(
      Routes.createPinView,
      page: _i6.CreatePinView,
    ),
    _i1.RouteDef(
      Routes.createWalletSetupView,
      page: _i7.CreateWalletSetupView,
    ),
    _i1.RouteDef(
      Routes.createWalletPhraseView,
      page: _i8.CreateWalletPhraseView,
    ),
    _i1.RouteDef(
      Routes.confirmWalletPhraseView,
      page: _i9.ConfirmWalletPhraseView,
    ),
    _i1.RouteDef(
      Routes.walletSuccessView,
      page: _i10.WalletSuccessView,
    ),
    _i1.RouteDef(
      Routes.authenticationView,
      page: _i11.AuthenticationView,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i12.DashboardView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i13.HomeView,
    ),
    _i1.RouteDef(
      Routes.walletPageView,
      page: _i14.WalletPageView,
    ),
    _i1.RouteDef(
      Routes.gamesView,
      page: _i15.GamesView,
    ),
    _i1.RouteDef(
      Routes.dappsView,
      page: _i16.DappsView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i17.SettingsView,
    ),
    _i1.RouteDef(
      Routes.addRemoveTokenView,
      page: _i18.AddRemoveTokenView,
    ),
    _i1.RouteDef(
      Routes.tokenInfoView,
      page: _i19.TokenInfoView,
    ),
    _i1.RouteDef(
      Routes.swapTokenView,
      page: _i20.SwapTokenView,
    ),
    _i1.RouteDef(
      Routes.sendTokenView,
      page: _i21.SendTokenView,
    ),
    _i1.RouteDef(
      Routes.receiveTokenView,
      page: _i22.ReceiveTokenView,
    ),
    _i1.RouteDef(
      Routes.buyTokenView,
      page: _i23.BuyTokenView,
    ),
    _i1.RouteDef(
      Routes.tokenDetailsView,
      page: _i24.TokenDetailsView,
    ),
    _i1.RouteDef(
      Routes.tokenSummaryView,
      page: _i25.TokenSummaryView,
    ),
    _i1.RouteDef(
      Routes.tokenView,
      page: _i26.TokenView,
    ),
    _i1.RouteDef(
      Routes.allGamesView,
      page: _i27.AllGamesView,
    ),
    _i1.RouteDef(
      Routes.gamesInfoView,
      page: _i28.GamesInfoView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.OnBoardingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.OnBoardingView(),
        settings: data,
      );
    },
    _i4.GetStartedView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.GetStartedView(),
        settings: data,
      );
    },
    _i5.CreateAccountView: (data) {
      final args = data.getArgs<CreateAccountViewArguments>(
        orElse: () => const CreateAccountViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i5.CreateAccountView(key: args.key),
        settings: data,
      );
    },
    _i6.CreatePinView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.CreatePinView(),
        settings: data,
      );
    },
    _i7.CreateWalletSetupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.CreateWalletSetupView(),
        settings: data,
      );
    },
    _i8.CreateWalletPhraseView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.CreateWalletPhraseView(),
        settings: data,
      );
    },
    _i9.ConfirmWalletPhraseView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ConfirmWalletPhraseView(),
        settings: data,
      );
    },
    _i10.WalletSuccessView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.WalletSuccessView(),
        settings: data,
      );
    },
    _i11.AuthenticationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.AuthenticationView(),
        settings: data,
      );
    },
    _i12.DashboardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.DashboardView(),
        settings: data,
      );
    },
    _i13.HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.HomeView(),
        settings: data,
      );
    },
    _i14.WalletPageView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.WalletPageView(),
        settings: data,
      );
    },
    _i15.GamesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.GamesView(),
        settings: data,
      );
    },
    _i16.DappsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.DappsView(),
        settings: data,
      );
    },
    _i17.SettingsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.SettingsView(),
        settings: data,
      );
    },
    _i18.AddRemoveTokenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.AddRemoveTokenView(),
        settings: data,
      );
    },
    _i19.TokenInfoView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.TokenInfoView(),
        settings: data,
      );
    },
    _i20.SwapTokenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.SwapTokenView(),
        settings: data,
      );
    },
    _i21.SendTokenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.SendTokenView(),
        settings: data,
      );
    },
    _i22.ReceiveTokenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.ReceiveTokenView(),
        settings: data,
      );
    },
    _i23.BuyTokenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i23.BuyTokenView(),
        settings: data,
      );
    },
    _i24.TokenDetailsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.TokenDetailsView(),
        settings: data,
      );
    },
    _i25.TokenSummaryView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i25.TokenSummaryView(),
        settings: data,
      );
    },
    _i26.TokenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i26.TokenView(),
        settings: data,
      );
    },
    _i27.AllGamesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i27.AllGamesView(),
        settings: data,
      );
    },
    _i28.GamesInfoView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i28.GamesInfoView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class CreateAccountViewArguments {
  const CreateAccountViewArguments({this.key});

  final _i29.Key? key;
}

extension NavigatorStateExtension on _i30.NavigationService {
  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnBoardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onBoardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGetStartedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.getStartedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreateAccountView({
    _i29.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.createAccountView,
        arguments: CreateAccountViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreatePinView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.createPinView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreateWalletSetupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.createWalletSetupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreateWalletPhraseView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.createWalletPhraseView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToConfirmWalletPhraseView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.confirmWalletPhraseView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWalletSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.walletSuccessView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAuthenticationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.authenticationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWalletPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.walletPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGamesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.gamesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDappsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dappsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddRemoveTokenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addRemoveTokenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTokenInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.tokenInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSwapTokenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.swapTokenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSendTokenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.sendTokenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToReceiveTokenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.receiveTokenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBuyTokenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.buyTokenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTokenDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.tokenDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTokenSummaryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.tokenSummaryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTokenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.tokenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAllGamesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.allGamesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGamesInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.gamesInfoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
