import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/ui/shared/border_radius.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/shared/spacing.dart';
import 'package:play_safe/ui/views/onboarding/createpin/createpin_viewmodel.dart';
import 'package:play_safe/ui/widgets/app_button.dart';
import 'package:play_safe/ui/widgets/custom_keyboard.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(
  fields: [
    FormTextField(name: 'pinValue'),
  ],
)
class CreatePinView extends StatelessWidget {
  const CreatePinView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreatePinModel>.reactive(
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
              "Create a Pin",
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
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          verticalSpaceSmall,
                          Text(
                            "Complete the details to create an account and get started with cryptowallet",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                obscuringWidget: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: kpinBorderRadiusColor,
                                    border: Border.all(
                                        color: kpinBorderRadiusColor),
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
                                // controller: ,
                                onCompleted: (pin) =>
                                    model.onCompleted(pin.length),
                                onChanged: (value) =>
                                    model.onCompleted(value.length),
                              ),
                            ),
                          ),
                          verticalSpaceLarge,
                        ],
                      ),
                      Column(
                        children: [
                          CustomKeyboard(
                            isShow: model.isShow,
                            setter: model.onClick,
                            backSpace: model.onBackspace,
                            visibility: model.onShow,
                          ),
                          verticalSpaceSmall,
                          model.pinFilled
                              ? AppButton(
                                  backgroundColor: kPrimaryColor,
                                  title: 'Create account',
                                  height: 45,
                                  width: double.infinity,
                                  isBusy: model.isBusy,
                                  onTap: (() => model.onNextButton()),
                                )
                              : Container(),
                        ],
                      ),
                      verticalSpaceLarge,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => CreatePinModel(),
    );
  }
}
