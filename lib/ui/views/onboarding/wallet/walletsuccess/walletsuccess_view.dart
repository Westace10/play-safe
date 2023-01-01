import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/onboarding/wallet/walletsuccess/walletsuccess_viewmodel.dart';
import 'package:stacked/stacked.dart';

class WalletSuccessView extends StatelessWidget {
  const WalletSuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WalletSuccessModel>.reactive(
      // onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0F051D),
            iconTheme: const IconThemeData(
              color: Colors.white,
              size: 20,
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
          body: Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 150,
                      child: Image.asset(
                        kOnboardingImages[1],
                      ),
                    ),
                    verticalSpaceNormal,
                    Text(
                      "Congratulations!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.familjenGrotesk(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    verticalSpaceMicroSmall,
                    Text(
                      "Wallet created successfully.",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: GoogleFonts.familjenGrotesk(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    verticalSpaceMedium,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextButton(
                        onPressed: model.goToDashboard,
                        style: TextButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          primary: kWhiteColor,
                        ),
                        child: Text(
                          "Go to home",
                          style: GoogleFonts.familjenGrotesk(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => WalletSuccessModel(),
    );
  }
}
