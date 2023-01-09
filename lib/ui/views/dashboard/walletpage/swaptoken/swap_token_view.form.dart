// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String SwapTokenAmountValueKey = 'swapTokenAmount';

final Map<String, TextEditingController> _SwapTokenViewTextEditingControllers =
    {};

final Map<String, FocusNode> _SwapTokenViewFocusNodes = {};

final Map<String, String? Function(String?)?> _SwapTokenViewTextValidations = {
  SwapTokenAmountValueKey: null,
};

mixin $SwapTokenView on StatelessWidget {
  TextEditingController get swapTokenAmountController =>
      _getFormTextEditingController(SwapTokenAmountValueKey);
  FocusNode get swapTokenAmountFocusNode =>
      _getFormFocusNode(SwapTokenAmountValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_SwapTokenViewTextEditingControllers.containsKey(key)) {
      return _SwapTokenViewTextEditingControllers[key]!;
    }
    _SwapTokenViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _SwapTokenViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_SwapTokenViewFocusNodes.containsKey(key)) {
      return _SwapTokenViewFocusNodes[key]!;
    }
    _SwapTokenViewFocusNodes[key] = FocusNode();
    return _SwapTokenViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    swapTokenAmountController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated('Use syncFormWithViewModel instead.'
      'This feature was deprecated after 3.1.0.')
  void listenToFormUpdated(FormViewModel model) {
    swapTokenAmountController.addListener(() => _updateFormData(model));
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
          SwapTokenAmountValueKey: swapTokenAmountController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        SwapTokenAmountValueKey: _getValidationMessage(SwapTokenAmountValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _SwapTokenViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_SwapTokenViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _SwapTokenViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _SwapTokenViewFocusNodes.values) {
      focusNode.dispose();
    }

    _SwapTokenViewTextEditingControllers.clear();
    _SwapTokenViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get swapTokenAmountValue =>
      this.formValueMap[SwapTokenAmountValueKey] as String?;

  bool get hasSwapTokenAmount =>
      this.formValueMap.containsKey(SwapTokenAmountValueKey) &&
      (swapTokenAmountValue?.isNotEmpty ?? false);

  bool get hasSwapTokenAmountValidationMessage =>
      this.fieldsValidationMessages[SwapTokenAmountValueKey]?.isNotEmpty ??
      false;

  String? get swapTokenAmountValidationMessage =>
      this.fieldsValidationMessages[SwapTokenAmountValueKey];
}

extension Methods on FormViewModel {
  setSwapTokenAmountValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SwapTokenAmountValueKey] =
          validationMessage;
}
