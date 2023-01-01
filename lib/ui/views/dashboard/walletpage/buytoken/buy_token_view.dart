import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/buytoken/buy_token_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_button.dart';
import 'package:play_safe/ui/widgets/custom_keyboard.dart';
import 'package:play_safe/ui/widgets/text_field.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(
  fields: [
    FormTextField(name: 'tokenAmount'),
  ],
)
class BuyTokenView extends StatelessWidget {
  const BuyTokenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BuyTokenViewModel>.reactive(
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
              "Buy Bitcoin",
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
              child: Padding(
                padding: kEdgeInsetsHorizontalNormal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpaceMini,
                    Padding(
                      padding: kEdgeInsetsHorizontalNormal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\u0024",
                                style: GoogleFonts.familjenGrotesk(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 48,
                                  height: 1.0,
                                ),
                              ),
                              SizedBox(
                                width: 280,
                                child: InputField(
                                  labelText: "",
                                  hintText: "",
                                  kPadding: 0.0,
                                  inputController: model.textController,
                                  color: Colors.transparent,
                                  textStyle: GoogleFonts.familjenGrotesk(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                    height: 1.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            // exchange rate
                            "0.332 ETH",
                            style: GoogleFonts.familjenGrotesk(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceSmall,
                    ListTile(
                      leading: const Icon(Icons.widgets),
                      title: Text(
                        "Moon Pay",
                        style: GoogleFonts.familjenGrotesk(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          height: 1.0,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down)),
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: kWhiteColor,
                    ),
                    verticalSpaceMini,
                    CustomKeyboard(
                      isShow: model.isShow,
                      setter: model.onClick,
                      backSpace: model.onBackspace,
                      visibility: model.onShow,
                    ),
                    verticalSpaceMicro,
                    Padding(
                      padding: kEdgeInsetsHorizontalNormal,
                      child: AppButton(
                        backgroundColor: kPrimaryColor,
                        title: 'Next',
                        height: 40,
                        width: double.infinity,
                        size: AppButtonSize.small,
                        // disabled: model.disableCreateButton,
                        isBusy: model.isBusy,
                        // onTap: model.goToCreatePin,
                      ),
                    ),
                    verticalSpaceMicroSmall,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => BuyTokenViewModel(),
    );
  }
}
