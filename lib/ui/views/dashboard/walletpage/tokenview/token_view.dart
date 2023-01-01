import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/tokenview/token_viewmodel.dart';
import 'package:play_safe/ui/widgets/balance.dart';
import 'package:play_safe/ui/widgets/token_section.dart';
import 'package:stacked/stacked.dart';

class TokenView extends StatelessWidget {
  const TokenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TokenViewModel>.reactive(
      // onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0F051D),
            automaticallyImplyLeading: true,
            centerTitle: true,
            iconTheme: const IconThemeData(
              color: Colors.white,
              size: 20,
            ),
            title: Text(
              "Total assets",
              style: GoogleFonts.familjenGrotesk(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                height: 1.5,
                color: kWhiteColor,
              ),
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceMini,
                  const Balance(
                    heading: "Your Earnings",
                  ),
                  verticalSpaceMini,
                  TokenSection(
                    sectionTitle: "Favorite tokens",
                    onSeeAllTap: model.goToTokenSummary,
                    onCardTap: model.goToTokenDetails,
                  ),
                  verticalSpaceMini,
                  TokenSection(
                    sectionTitle: "Trending tokens",
                    onSeeAllTap: model.goToTokenSummary,
                    onCardTap: model.goToTokenDetails,
                  ),
                  verticalSpaceMicroSmall,
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => TokenViewModel(),
    );
  }
}
