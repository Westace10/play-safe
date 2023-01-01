// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String WalletAddressValueKey = 'walletAddress';
const String SendTokenAmountValueKey = 'sendTokenAmount';

final Map<String, TextEditingController> _SendTokenViewTextEditingControllers =
    {};

final Map<String, FocusNode> _SendTokenViewFocusNodes = {};

final Map<String, String? Function(String?)?> _SendTokenViewTextValidations = {
  WalletAddressValueKey: null,
  SendTokenAmountValueKey: null,
};

mixin $SendTokenView on StatelessWidget {
  TextEditingController get walletAddressController =>
      _getFormTextEditingController(WalletAddressValueKey);
  TextEditingController get sendTokenAmountController =>
      _getFormTextEditingController(SendTokenAmountValueKey);
  FocusNode get walletAddressFocusNode =>
      _getFormFocusNode(WalletAddressValueKey);
  FocusNode get sendTokenAmountFocusNode =>
      _getFormFocusNode(SendTokenAmountValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_SendTokenViewTextEditingControllers.containsKey(key)) {
      return _SendTokenViewTextEditingControllers[key]!;
    }
    _SendTokenViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _SendTokenViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_SendTokenViewFocusNodes.containsKey(key)) {
      return _SendTokenViewFocusNodes[key]!;
    }
    _SendTokenViewFocusNodes[key] = FocusNode();
    return _SendTokenViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    walletAddressController.addListener(() => _updateFormData(model));
    sendTokenAmountController.addListener(() => _updateFormData(model));
  }

  final bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          WalletAddressValueKey: walletAddressController.text,
          SendTokenAmountValueKey: sendTokenAmountController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        WalletAddressValueKey: _getValidationMessage(WalletAddressValueKey),
        SendTokenAmountValueKey: _getValidationMessage(SendTokenAmountValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _SendTokenViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_SendTokenViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _SendTokenViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _SendTokenViewFocusNodes.values) {
      focusNode.dispose();
    }

    _SendTokenViewTextEditingControllers.clear();
    _SendTokenViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get walletAddressValue =>
      this.formValueMap[WalletAddressValueKey] as String?;
  String? get sendTokenAmountValue =>
      this.formValueMap[SendTokenAmountValueKey] as String?;

  bool get hasWalletAddress =>
      this.formValueMap.containsKey(WalletAddressValueKey) &&
      (walletAddressValue?.isNotEmpty ?? false);
  bool get hasSendTokenAmount =>
      this.formValueMap.containsKey(SendTokenAmountValueKey) &&
      (sendTokenAmountValue?.isNotEmpty ?? false);

  bool get hasWalletAddressValidationMessage =>
      this.fieldsValidationMessages[WalletAddressValueKey]?.isNotEmpty ?? false;
  bool get hasSendTokenAmountValidationMessage =>
      this.fieldsValidationMessages[SendTokenAmountValueKey]?.isNotEmpty ??
      false;

  String? get walletAddressValidationMessage =>
      this.fieldsValidationMessages[WalletAddressValueKey];
  String? get sendTokenAmountValidationMessage =>
      this.fieldsValidationMessages[SendTokenAmountValueKey];
}

extension Methods on FormViewModel {
  setWalletAddressValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[WalletAddressValueKey] = validationMessage;
  setSendTokenAmountValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SendTokenAmountValueKey] =
          validationMessage;
}
