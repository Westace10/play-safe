import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/onboarding/getstarted/getstarted_viewmodel.dart';
import 'package:stacked/stacked.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GetStartedModel>.reactive(
      // onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            body: Container(
          decoration: const BoxDecoration(gradient: kBckgrdGradient),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/getstarted_image.png",
                  ),
                  verticalSpaceNormal,
                  Text(
                    "Earn directly into your wallet.\nHave fun and earn token",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.familjenGrotesk(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  verticalSpaceNormal,
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextButton(
                      onPressed: model.goToCreateAccount,
                      style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        primary: kWhiteColor,
                      ),
                      child: Text(
                        "Create account",
                        style: GoogleFonts.familjenGrotesk(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  verticalSpaceMicro,
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextButton(
                      onPressed: model.goToAccessAccount,
                      style: TextButton.styleFrom(
                        backgroundColor: kTransparent,
                        primary: kWhiteColor,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                              color: kPrimaryColor,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                      ),
                      child: Text(
                        "Access account",
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
        )),
      ),
      viewModelBuilder: () => GetStartedModel(),
    );
  }
}
