import 'package:flutter/material.dart';
import 'package:play_safe/ui/shared/colors.dart';
import 'package:play_safe/ui/views/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        // backgroundColor: kBckgrdGradient.colors[1],
        // appBar: AppBar(),
        // extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(gradient: kBckgrdGradient),
          child: Center(
            child: Image.asset(
              "assets/images/playsafe_3.png",
            ),
          ),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
