// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/ui/widgets/keyboard_key.dart';

class CustomKeyboard extends StatelessWidget {
  CustomKeyboard({
    Key? key,
    this.isShow,
    this.setter,
    this.backSpace,
    this.visibility,
  }) : super(key: key);
  bool? isShow;
  Function(String)? setter;
  Function? backSpace;
  Function? visibility;
  renderKeyboard() {
    var newVal = '';
    return topKeys
        .map(
          (e) => Row(
            children: e
                .map((e) => KeyboardKey(
                      label: e,
                      value: e,
                      onTextInput: ((value) {
                        newVal = value;
                        if (newVal.length < 6) {
                          newVal = value;
                          setter!(newVal);
                        }
                      }),
                      onBackSpace: () {
                        backSpace!.call();
                      },
                      visibility: () {
                        visibility!.call();
                      },
                      isShow: isShow!,
                    ))
                .toList(),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 250,
      child: Column(
        children: [
          ...renderKeyboard(),
        ],
      ),
    );
  }
}
