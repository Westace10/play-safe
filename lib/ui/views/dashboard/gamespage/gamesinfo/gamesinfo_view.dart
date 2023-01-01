import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/gamespage/gamesinfo/gamesinfo_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_button.dart';
import 'package:stacked/stacked.dart';

class GamesInfoView extends StatelessWidget {
  const GamesInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GamesInfoViewModel>.reactive(
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
          ),
          body: Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: kEdgeInsetsHorizontalMedium,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpaceMicro,
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: mediumBorderRadius,
                          color: kInputBoxColor),
                      height: 275,
                      width: double.infinity,
                      child: Padding(
                        padding: kEdgeInsetsAllNormal,
                        child: Image.asset(
                          "assets/images/candycrush.png",
                          scale: 0.6,
                        ),
                      ),
                    ),
                    verticalSpaceMicro,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Candy Crush",
                          style: GoogleFonts.familjenGrotesk(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            height: 1.0,
                          ),
                        ),
                        model.isPaid
                            ? const ExclusiveStar()
                            : const RegularStar(),
                      ],
                    ),
                    verticalSpaceMicroSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.isPaid ? "Exclusive" : "Free",
                          style: GoogleFonts.familjenGrotesk(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 1.0,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Highest earning",
                              style: GoogleFonts.familjenGrotesk(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.0,
                              ),
                            ),
                            verticalSpaceMicroSmall,
                            Row(
                              children: [
                                Padding(
                                  padding: kEdgeInsetsHorizontalTiny,
                                  child: Image.asset(
                                    "assets/images/bitcoin.png",
                                    scale: 1.4,
                                  ),
                                ),
                                Text(
                                  "\u002439.20ETH",
                                  style: GoogleFonts.familjenGrotesk(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    height: 1.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    verticalSpaceMicro,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.84,
                          child: Text(
                            "Play Candy Crush Saga and switch and match your way through hundreds of levels in this divine puzzle adventure. Join Tiffi and Mr. Toffee on their epic journey in an online game full of delicious treats! Ain't it the sweetest game ever? Play as high as level 50 to start earning ETH",
                            style: GoogleFonts.familjenGrotesk(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceMicro,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.84,
                          child: model.isPaid
                              ? Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Pay ",
                                      style: GoogleFonts.familjenGrotesk(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.0,
                                      ),
                                    ),
                                    Image.asset('assets/images/bitcoin.png',
                                        scale: 1.4),
                                    Text(
                                      " \u00240.005ETH to start playing",
                                      style: GoogleFonts.familjenGrotesk(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.0,
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Earning starts from ",
                                      style: GoogleFonts.familjenGrotesk(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.0,
                                      ),
                                    ),
                                    Image.asset('assets/images/bitcoin.png',
                                        scale: 1.4),
                                    Text(
                                      " \u00240.002ETH",
                                      style: GoogleFonts.familjenGrotesk(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.0,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ],
                    ),
                    AppButton(
                      backgroundColor: kPrimaryColor,
                      title: 'Play',
                      height: 40,
                      width: double.infinity,
                      size: AppButtonSize.small,
                      // disabled: model.disableCreateButton,
                      isBusy: model.isBusy,
                      // onTap: model.goToCreatePin,
                    ),
                    verticalSpaceSmall,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => GamesInfoViewModel(),
    );
  }
}

class ExclusiveStar extends StatelessWidget {
  const ExclusiveStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 30,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: 5,
        itemBuilder: ((context, index) => Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: kEdgeInsetsHorizontalThinner,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: mediumBorderRadius,
                      gradient: kPaidGradient),
                ),
                const Icon(Icons.star_rounded)
              ],
            )),
      ),
    );
  }
}

class RegularStar extends StatelessWidget {
  const RegularStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 30,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: 5,
        itemBuilder: ((context, index) => const Icon(
              Icons.star_rounded,
            )),
      ),
    );
  }
}
