import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/onboarding/onboarding_view/onboarding_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardingViewModel>.reactive(
      // onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          extendBody: true,
          body: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    verticalSpaceMicro,
                    SizedBox(
                      height: 150,
                      child: Swiper(
                        duration: veryLongDuration.inSeconds,
                        autoplay: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Image.asset(
                            kOnboardingImages[index],
                          );
                        },
                        itemCount: kOnboardingImages.length,
                      ),
                    ),
                    verticalSpaceNormal,
                    Text(
                      "Enter into PlaySafe planet",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.familjenGrotesk(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    verticalSpaceMicroSmall,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        "Mind blowing games await you. Play to earn in the blockchain world while playing safe",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: GoogleFonts.familjenGrotesk(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    verticalSpaceMedium,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextButton(
                        onPressed: model.goToGetStarted,
                        style: TextButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          primary: kWhiteColor,
                        ),
                        child: Text(
                          "Get Started",
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
      viewModelBuilder: () => OnBoardingViewModel(),
    );
  }
}
