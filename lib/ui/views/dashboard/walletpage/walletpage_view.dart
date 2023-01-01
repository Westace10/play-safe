import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/walletpage_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_button.dart';
import 'package:play_safe/ui/widgets/balance.dart';
import 'package:stacked/stacked.dart';

class WalletPageView extends StatelessWidget {
  const WalletPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WalletPageViewModel>.reactive(
      // onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0F051D),
            automaticallyImplyLeading: false,
            title: Padding(
              padding: kEdgeInsetsHorizontalTiny,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const CircleAvatar(
                      backgroundColor: kWhiteColor,
                      child: Icon(Icons.person),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: model.goToTokenView,
                        icon: Image.asset("assets/images/tokenicon.png"),
                      ),
                    ],
                  ),
                ],
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
                  const Balance(
                    heading: "Total assets",
                  ),
                  verticalSpaceMini,
                  Padding(
                    padding: kEdgeInsetsHorizontalNormal,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.53,
                      child: ListView.builder(itemBuilder: (context, index) {
                        return Column(
                          children: [
                            verticalSpaceMicroSmall,
                            InkWell(
                              onTap: model.goToTokenInfo,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("assets/images/bitcoin.png"),
                                      Padding(
                                        padding: kEdgeInsetsHorizontalTiny,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text("Bitcoin"),
                                            verticalSpaceMicroSmallie,
                                            Row(
                                              children: [
                                                const Text("BTC"),
                                                Padding(
                                                  padding:
                                                      kEdgeInsetsHorizontalTiny,
                                                  child: const Icon(
                                                    Icons.star,
                                                    size: 10,
                                                    color: kPrimaryColor,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Text("0 BTC"),
                                      verticalSpaceMicroSmallie,
                                      const Text("\u00240.00"),
                                      verticalSpaceMicroSmallie,
                                      Row(
                                        children: [
                                          Padding(
                                            padding: kEdgeInsetsHorizontalTiny,
                                            child: const Icon(
                                              Icons.arrow_upward,
                                              size: 10,
                                              color: kGainLineColor,
                                            ),
                                          ),
                                          Text(
                                            "2.76%",
                                            style: GoogleFonts.familjenGrotesk(
                                              color: kGainLineColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12.5,
                                              height: 1.5,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            verticalSpaceMicroSmall,
                            const Divider(
                              thickness: 2,
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                  verticalSpaceMicroSmall,
                  AppButton(
                    backgroundColor: Colors.transparent,
                    title: 'Add or remove token',
                    height: 40,
                    width: double.infinity,
                    leadingIcon: Icons.tune,
                    iconColor: kPrimaryColor,
                    size: AppButtonSize.small,
                    // disabled: model.disableCreateButton,
                    isBusy: model.isBusy,
                    onTap: model.goToAddRemoveToken,
                  ),

                  // verticalSpaceMassive,
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => WalletPageViewModel(),
    );
  }
}
