import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/dashboard/walletpage/sendtoken/send_token_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_button.dart';
import 'package:play_safe/ui/widgets/text_field.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(
  fields: [
    FormTextField(name: 'walletAddress'),
    FormTextField(name: 'sendTokenAmount'),
  ],
)
class SendTokenView extends StatelessWidget {
  const SendTokenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SendTokenViewModel>.reactive(
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
              "Send Bitcoin",
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
                  const InputField(
                      labelText: "Bitcoin wallet address",
                      hintText: "Enter receiver Bitcoin wallet address"),
                  verticalSpaceMini,
                  InputField(
                    labelText: "Max: 2 Bitcoins",
                    hintText: "Enter amount to send",
                    keyboardType: TextInputType.number,
                    inputFormat: [FilteringTextInputFormatter.digitsOnly],
                  ),
                  verticalSpaceNormal,
                  Padding(
                    padding: kEdgeInsetsHorizontalNormal,
                    child: AppButton(
                      backgroundColor: kPrimaryColor,
                      title: 'Send',
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
      viewModelBuilder: () => SendTokenViewModel(),
    );
  }
}
