import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/onboarding/wallet/confirmwalletphrase/confirmwalletphrase_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_button.dart';
import 'package:stacked/stacked.dart';

class ConfirmWalletPhraseView extends StatelessWidget {
  const ConfirmWalletPhraseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmWalletPhraseModel>.reactive(
      onModelReady: (model) => model.init(),
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
            title: const Text(
              "Secret recovery phrase",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: model.goBack,
            ),
            automaticallyImplyLeading: true,
          ),
          body: Container(
            decoration: const BoxDecoration(gradient: kBckgrdGradient),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpaceMini,
                    Text(
                      "Select the secret phrase you copied in order they where arranged",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.5,
                        height: 1.5,
                      ),
                    ),
                    verticalSpaceSmall,
                    Container(
                      width: 360,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: normalBorderRadius,
                        color: kInputBoxColor,
                      ),
                    ),
                    verticalSpaceMicro,
                    SizedBox(
                      width: 360,
                      height: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: secretPhrase
                            .map(
                              (e) => Column(
                                children: e
                                    .map(
                                      (x) => Expanded(
                                        flex: 1,
                                        child: AspectRatio(
                                          aspectRatio: 2,
                                          child: Center(child: Text(x)),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    verticalSpaceMicro,
                    AppButton(
                      title: 'Create wallet',
                      height: 45,
                      size: AppButtonSize.normal,
                      onTap: (() => model.showSuccess()),
                    ),
                    verticalSpaceLarge,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ConfirmWalletPhraseModel(),
    );
  }
}
