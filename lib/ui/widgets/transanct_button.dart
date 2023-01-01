import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_safe/ui/shared/edge_insets.dart';
import 'package:play_safe/ui/widgets/app_button.dart';

class TransactButtons extends StatelessWidget {
  const TransactButtons({
    Key? key,
    this.onReceiveClick,
    this.onBuyClick,
    this.onSendClick,
    this.onSwapClick,
  }) : super(key: key);
  final Function? onReceiveClick;
  final Function? onBuyClick;
  final Function? onSendClick;
  final Function? onSwapClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kEdgeInsetsHorizontalNormal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppButton.circularWithLabel(
            title: "Receive",
            onClick: onReceiveClick,
            padding: kEdgeInsetsZero,
            textStyle: GoogleFonts.familjenGrotesk(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              height: 1.5,
            ),
          ),
          AppButton.circularWithLabel(
            title: "Buy",
            onClick: onBuyClick,
            padding: kEdgeInsetsZero,
            textStyle: GoogleFonts.familjenGrotesk(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              height: 1.5,
            ),
          ),
          AppButton.circularWithLabel(
            title: "Swap",
            onClick: onSwapClick,
            padding: kEdgeInsetsZero,
            textStyle: GoogleFonts.familjenGrotesk(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              height: 1.5,
            ),
          ),
          AppButton.circularWithLabel(
            title: "Send",
            onClick: onSendClick,
            padding: kEdgeInsetsZero,
            textStyle: GoogleFonts.familjenGrotesk(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
