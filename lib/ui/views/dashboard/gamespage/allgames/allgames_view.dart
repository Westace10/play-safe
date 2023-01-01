import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/gamespage/allgames/allgames_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AllGamesView extends StatelessWidget {
  const AllGamesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllGamesViewModel>.reactive(
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
              "All games",
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
            padding: kEdgeInsetsAllNormal,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 72.0,
              ),
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: model.goToGamesInfoView,
                  child: Stack(
                    children: [
                      Center(
                        child: Wrap(
                          children: [
                            Container(
                              // margin: const EdgeInsets.only(left: 24),
                              decoration: BoxDecoration(
                                  borderRadius: mediumBorderRadius,
                                  color: kInputBoxColor),
                              height: 230,
                              width: 165,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: kEdgeInsetsAllNormal,
                                    child: Image.asset(
                                      "assets/images/candycrush.png",
                                      scale: 1.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: kEdgeInsetsHorizontalSmall,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Candy crush",
                                          style: GoogleFonts.familjenGrotesk(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            height: 1.5,
                                          ),
                                        ),
                                        Text(
                                          "Highest Earnings",
                                          style: GoogleFonts.familjenGrotesk(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            height: 1.5,
                                          ),
                                        ),
                                        verticalSpaceMicroSmallie,
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  "assets/images/bitcoin.png",
                                                  height: 13,
                                                ),
                                                Padding(
                                                  padding:
                                                      kEdgeInsetsHorizontalTiny,
                                                  child: Text(
                                                    "2.2ETH",
                                                    style: GoogleFonts
                                                        .familjenGrotesk(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12.5,
                                                      height: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Icon(
                                              Icons.star_border_rounded,
                                              size: 18,
                                              color: Colors.white54,
                                            ),
                                            // Image.asset(
                                            //   "assets/images/bitcoin.png",
                                            //   height: 15,
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  verticalSpaceMicroSmallie,
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      (index / 2).floor().isEven
                          ? Container()
                          : Positioned(
                              left: 135,
                              top: 10,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: mediumBorderRadius,
                                        gradient: kPaidGradient),
                                  ),
                                  const Icon(Icons.star_rounded)
                                ],
                              )),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
      viewModelBuilder: () => AllGamesViewModel(),
    );
  }
}
