import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/addremovetoken/addremove_token_viewmodel.dart';
import 'package:play_safe/ui/widgets/search_field.dart';
import 'package:stacked/stacked.dart';

class AddRemoveTokenView extends StatelessWidget {
  const AddRemoveTokenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddRemoveTokenViewModel>.reactive(
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
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchField(
                    suffixIcon: true,
                  ),
                  verticalSpaceSmall,
                  Padding(
                    padding: kEdgeInsetsHorizontalNormal,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: ListView.builder(itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: Image.asset(
                                "assets/images/bitcoin.png",
                                scale: 0.65,
                              ),
                              title: Text(
                                "Smart Chain(BNB)",
                                style: GoogleFonts.familjenGrotesk(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  height: 1.0,
                                ),
                              ),
                              trailing: IconButton(
                                icon: Icon(
                                  model.isAdded
                                      ? Icons.toggle_on
                                      : Icons.toggle_off,
                                  color: model.isAdded
                                      ? kPrimaryColor
                                      : kWhiteColor,
                                  size: 32,
                                ),
                                onPressed: model.addRemoveToken,
                              ),
                            ),
                            verticalSpaceMicroSmallest,
                            const Divider(
                              thickness: 2,
                            ),
                          ],
                        );
                        // return Column(
                        //   children: [
                        //     verticalSpaceMicroSmall,
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Row(
                        //           children: [
                        //             Image.asset("assets/images/bitcoin.png"),
                        //             Padding(
                        //               padding: kEdgeInsetsHorizontalTiny,
                        //               child: Column(
                        //                 mainAxisAlignment:
                        //                     MainAxisAlignment.start,
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   const Text("Bitcoin"),
                        //                   verticalSpaceMicroSmallie,
                        //                   Row(
                        //                     children: [
                        //                       const Text("BTC"),
                        //                       Padding(
                        //                         padding:
                        //                             kEdgeInsetsHorizontalTiny,
                        //                         child: const Icon(
                        //                           Icons.star,
                        //                           size: 10,
                        //                           color: kPrimaryColor,
                        //                         ),
                        //                       ),
                        //                     ],
                        //                   )
                        //                 ],
                        //               ),
                        //             )
                        //           ],
                        //         ),
                        //         Column(
                        //           mainAxisAlignment: MainAxisAlignment.start,
                        //           crossAxisAlignment: CrossAxisAlignment.end,
                        //           children: [
                        //             const Text("0 BTC"),
                        //             verticalSpaceMicroSmallie,
                        //             const Text("\u00240.00"),
                        //             verticalSpaceMicroSmallie,
                        //             Row(
                        //               children: [
                        //                 Padding(
                        //                   padding: kEdgeInsetsHorizontalTiny,
                        //                   child: const Icon(
                        //                     Icons.arrow_upward,
                        //                     size: 10,
                        //                     color: kGainLineColor,
                        //                   ),
                        //                 ),
                        //                 Text(
                        //                   "2.76%",
                        //                   style: GoogleFonts.familjenGrotesk(
                        //                     color: kGainLineColor,
                        //                     fontWeight: FontWeight.w400,
                        //                     fontSize: 12.5,
                        //                     height: 1.5,
                        //                   ),
                        //                 ),
                        //               ],
                        //             )
                        //           ],
                        //         ),
                        //       ],
                        //     ),
                        //     verticalSpaceMicroSmall,
                        //     const Divider(
                        //       thickness: 2,
                        //     ),
                        //   ],
                        // );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => AddRemoveTokenViewModel(),
    );
  }
}
