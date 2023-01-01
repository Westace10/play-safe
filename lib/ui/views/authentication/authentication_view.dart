import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/authentication/authentication_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_spinner.dart';
import 'package:play_safe/ui/widgets/custom_keyboard.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(
  fields: [
    FormTextField(name: 'pinValue'),
  ],
)
class AuthenticationView extends StatelessWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthenticationViewModel>.reactive(
      // onModelReady: (model) => model.init(),
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
              "Access account",
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpaceSmall,
                    Text(
                      "Enter your 6-digit pin to access your account",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.5,
                        height: 1.5,
                      ),
                    ),
                    verticalSpaceLarge,
                    Center(
                      child: Padding(
                        padding: kEdgeInsetsHorizontalMini,
                        child: Pinput(
                          controller: model.pinController,
                          length: pinLength,
                          obscureText: !model.isShow,
                          showCursor: false,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          obscuringWidget: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: kpinBorderRadiusColor,
                              border: Border.all(color: kpinBorderRadiusColor),
                              borderRadius: miniBorderRadius,
                            ),
                          ),
                          defaultPinTheme: PinTheme(
                            width: 15,
                            height: 15,
                            decoration: model.isShow
                                ? null
                                : BoxDecoration(
                                    border: Border.all(
                                        color: kpinBorderRadiusColor),
                                    borderRadius: miniBorderRadius,
                                  ),
                          ),
                          onCompleted: (pin) => model.goToDash(),
                          onChanged: (value) => model.onCompleted(value.length),
                        ),
                      ),
                    ),
                    verticalSpaceLarge,
                    CustomKeyboard(
                      isShow: model.isShow,
                      setter: model.onClick,
                      backSpace: model.onBackspace,
                      visibility: model.onShow,
                    ),
                    verticalSpaceSmall,
                    model.isBusy
                        ? const AppSpinner(
                            color: kWhiteColor,
                            size: 24,
                          )
                        : Container()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => AuthenticationViewModel(),
    );
  }
}
