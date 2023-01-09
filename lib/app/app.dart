import 'package:play_safe/core/services/api_services.dart';
import 'package:play_safe/core/services/local_storage/persistence_storage_service.dart';
import 'package:play_safe/ui/views/authentication/authentication_view.dart';
import 'package:play_safe/ui/views/dashboard/dappspage/dapps_view.dart';
import 'package:play_safe/ui/views/dashboard/dashboard_view.dart';
import 'package:play_safe/ui/views/dashboard/gamespage/allgames/allgames_view.dart';
import 'package:play_safe/ui/views/dashboard/gamespage/games_view.dart';
import 'package:play_safe/ui/views/dashboard/gamespage/gamesinfo/gamesinfo_view.dart';
import 'package:play_safe/ui/views/dashboard/homepage/home_view.dart';
import 'package:play_safe/ui/views/dashboard/settingspage/settings_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/addremovetoken/addremove_token_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/buytoken/buy_token_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/receivetoken/receive_token_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/sendtoken/send_token_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/swaptoken/swap_token_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/tokeninfo/token_info_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/tokenview/token_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/tokenview/tokendetails/tokendetails_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/tokenview/tokensummary/tokensummary_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/walletpage_view.dart';
import 'package:play_safe/ui/views/onboarding/createaccount/createaccount_view.dart';
import 'package:play_safe/ui/views/onboarding/createpin/createpin_view.dart';
import 'package:play_safe/ui/views/onboarding/getstarted/getstarted_view.dart';
import 'package:play_safe/ui/views/onboarding/onboarding_view/onboarding_view.dart';
import 'package:play_safe/ui/views/startup/startup_view.dart';
import 'package:play_safe/ui/views/onboarding/wallet/confirmwalletphrase/confirmwalletphrase_view.dart';
import 'package:play_safe/ui/views/onboarding/wallet/createwalletphrase/createwalletphrase_view.dart';
import 'package:play_safe/ui/views/onboarding/wallet/walletsetup/createwalletsetup_view.dart';
import 'package:play_safe/ui/views/onboarding/wallet/walletsuccess/walletsuccess_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: OnBoardingView),
    MaterialRoute(page: GetStartedView),
    MaterialRoute(page: CreateAccountView),
    MaterialRoute(page: CreatePinView),
    MaterialRoute(page: CreateWalletSetupView),
    MaterialRoute(page: CreateWalletPhraseView),
    MaterialRoute(page: ConfirmWalletPhraseView),
    MaterialRoute(page: WalletSuccessView),
    MaterialRoute(page: AuthenticationView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: WalletPageView),
    MaterialRoute(page: GamesView),
    MaterialRoute(page: DappsView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: AddRemoveTokenView),
    MaterialRoute(page: TokenInfoView),
    MaterialRoute(page: SwapTokenView),
    MaterialRoute(page: SendTokenView),
    MaterialRoute(page: ReceiveTokenView),
    MaterialRoute(page: BuyTokenView),
    MaterialRoute(page: TokenDetailsView),
    MaterialRoute(page: TokenSummaryView),
    MaterialRoute(page: TokenView),
    MaterialRoute(page: AllGamesView),
    MaterialRoute(page: GamesInfoView),
  ],
  dependencies: [
    // core services
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: APIService),

    // local storage services
    LazySingleton(classType: PersistentStorageService),

    // feature services
    // Presolve(
    //   classType: AppThemeService,
    //   presolveUsing: AppThemeService.getInstance,
    // ),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
