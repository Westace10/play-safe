import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/tokeninfo/token_info_viewmodel.dart';
import 'package:play_safe/ui/widgets/transanct_button.dart';
import 'package:stacked/stacked.dart';

class TokenInfoView extends StatelessWidget {
  const TokenInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TokenInfoViewModel>.reactive(
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
              "Bitcoin",
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
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceMini,
                  // current balance widget
                  Padding(
                    padding: kEdgeInsetsHorizontalNormal,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Current Balance",
                              style: GoogleFonts.familjenGrotesk(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.5,
                                height: 1.0,
                              ),
                            ),
                            Padding(
                              padding: kEdgeInsetsHorizontalSmall,
                              child: const Icon(
                                Icons.visibility_off,
                                size: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceMicroSmall,
                        Row(
                          children: [
                            Text(
                              "2.390 ETH",
                              style: GoogleFonts.familjenGrotesk(
                                fontWeight: FontWeight.w800,
                                fontSize: 32,
                                height: 1.0,
                              ),
                            ),
                            horizontalSpaceSmall,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.sync_alt_outlined,
                                  size: 12,
                                ),
                                Text(
                                  "\u00241329.7",
                                  style: GoogleFonts.familjenGrotesk(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    height: 1.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceMini,
                  TransactButtons(
                    onReceiveClick: model.goToReceiveToken,
                    onSendClick: model.goToSendToken,
                    onBuyClick: model.goToBuyToken,
                    onSwapClick: model.goToSwapToken,
                  ),
                  verticalSpaceMini,
                  Padding(
                    padding: kEdgeInsetsHorizontalNormal,
                    child: Text(
                      "Recent transaction",
                      style: GoogleFonts.familjenGrotesk(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.5,
                        height: 1.5,
                      ),
                    ),
                  ),
                  verticalSpaceMini,
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpaceMicroSmallest,
                          Padding(
                            padding: kEdgeInsetsHorizontalNormal,
                            child: Text(
                              DateTime.now().toString().split(" ")[0],
                              style: GoogleFonts.familjenGrotesk(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.0,
                              ),
                            ),
                          ),
                          verticalSpaceMicroSmallest,
                          ListTile(
                            leading: const Icon(Icons.book),
                            title: Text(
                              "Smart Contract Call",
                              style: GoogleFonts.familjenGrotesk(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                height: 1.0,
                              ),
                            ),
                            subtitle: Text(
                              "To: 0x10EDJS2938474755....",
                              style: GoogleFonts.familjenGrotesk(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.0,
                              ),
                            ),
                            trailing: Text(
                              "0.0027 ETH",
                              style: GoogleFonts.familjenGrotesk(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                height: 1.0,
                              ),
                            ),
                          ),
                          verticalSpaceMicroSmallest,
                          const Divider(
                            thickness: 2,
                          ),
                        ],
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => TokenInfoViewModel(),
    );
  }
}
