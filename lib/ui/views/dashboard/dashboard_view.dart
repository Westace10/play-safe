import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/views/dashboard/dappspage/dapps_view.dart';
import 'package:play_safe/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:play_safe/ui/views/dashboard/gamespage/games_view.dart';
import 'package:play_safe/ui/views/dashboard/homepage/home_view.dart';
import 'package:play_safe/ui/views/dashboard/settingspage/settings_view.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/walletpage_view.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      // onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          body: PageView(
            controller: model.pageController,
            children: const [
              HomeView(),
              WalletPageView(),
              GamesView(),
              DappsView(),
              SettingsView()
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: ((value) => model.onNavBarTap(value)),
            currentIndex: model.currentIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kSecondaryColor,
            showUnselectedLabels: true,
            selectedItemColor: kWhiteColor,
            unselectedLabelStyle: GoogleFonts.familjenGrotesk(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              height: 1.5,
            ),
            selectedLabelStyle: GoogleFonts.familjenGrotesk(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              height: 1.5,
            ),
            items: [
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: kEdgeInsetsAllMini,
                  child: Image.asset(
                    "assets/images/activehome.png",
                    color: kWhiteColor,
                  ),
                ),
                icon: Padding(
                  padding: kEdgeInsetsAllMini,
                  child: Image.asset(
                    "assets/images/inactivehome.png",
                    color: kWhiteColor,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: kEdgeInsetsAllMini,
                  child: Image.asset(
                    "assets/images/activewallet.png",
                    color: kWhiteColor,
                  ),
                ),
                icon: Padding(
                  padding: kEdgeInsetsAllMini,
                  child: Image.asset(
                    "assets/images/inactivewallet.png",
                    color: kWhiteColor,
                  ),
                ),
                label: "Wallet",
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: kEdgeInsetsAllMini,
                  child: const Icon(
                    Icons.videogame_asset,
                    color: kWhiteColor,
                  ),
                ),
                icon: Padding(
                  padding: kEdgeInsetsAllMini,
                  child: const Icon(
                    Icons.videogame_asset_outlined,
                    color: Colors.white54,
                  ),
                ),
                label: "Games",
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: kEdgeInsetsAllMini,
                  child: const Icon(
                    Icons.language,
                    color: kWhiteColor,
                  ),
                ),
                icon: Padding(
                  padding: kEdgeInsetsAllMini,
                  child: const Icon(
                    Icons.language_outlined,
                    color: Colors.white54,
                  ),
                ),
                label: "Community",
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: kEdgeInsetsAllMini,
                  child: Image.asset(
                    "assets/images/activesettings.png",
                    color: kWhiteColor,
                  ),
                ),
                icon: Padding(
                  padding: kEdgeInsetsAllMini,
                  child: Image.asset(
                    "assets/images/inactivesettings.png",
                    color: kWhiteColor,
                  ),
                ),
                label: "Settings",
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DashboardViewModel(),
    );
  }
}
