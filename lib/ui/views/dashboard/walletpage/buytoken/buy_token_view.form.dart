// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String TokenAmountValueKey = 'tokenAmount';

final Map<String, TextEditingController> _BuyTokenViewTextEditingControllers =
    {};

final Map<String, FocusNode> _BuyTokenViewFocusNodes = {};

final Map<String, String? Function(String?)?> _BuyTokenViewTextValidations = {
  TokenAmountValueKey: null,
};

mixin $BuyTokenView on StatelessWidget {
  TextEditingController get tokenAmountController =>
      _getFormTextEditingController(TokenAmountValueKey);
  FocusNode get tokenAmountFocusNode => _getFormFocusNode(TokenAmountValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_BuyTokenViewTextEditingControllers.containsKey(key)) {
      return _BuyTokenViewTextEditingControllers[key]!;
    }
    _BuyTokenViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _BuyTokenViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_BuyTokenViewFocusNodes.containsKey(key)) {
      return _BuyTokenViewFocusNodes[key]!;
    }
    _BuyTokenViewFocusNodes[key] = FocusNode();
    return _BuyTokenViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    tokenAmountController.addListener(() => _updateFormData(model));
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
          TokenAmountValueKey: tokenAmountController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        TokenAmountValueKey: _getValidationMessage(TokenAmountValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _BuyTokenViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_BuyTokenViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _BuyTokenViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _BuyTokenViewFocusNodes.values) {
      focusNode.dispose();
    }

    _BuyTokenViewTextEditingControllers.clear();
    _BuyTokenViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get tokenAmountValue =>
      this.formValueMap[TokenAmountValueKey] as String?;

  bool get hasTokenAmount =>
      this.formValueMap.containsKey(TokenAmountValueKey) &&
      (tokenAmountValue?.isNotEmpty ?? false);

  bool get hasTokenAmountValidationMessage =>
      this.fieldsValidationMessages[TokenAmountValueKey]?.isNotEmpty ?? false;

  String? get tokenAmountValidationMessage =>
      this.fieldsValidationMessages[TokenAmountValueKey];
}

extension Methods on FormViewModel {
  setTokenAmountValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TokenAmountValueKey] = validationMessage;
}
