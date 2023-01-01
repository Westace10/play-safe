// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String PinValueValueKey = 'pinValue';

final Map<String, TextEditingController> _CreatePinViewTextEditingControllers =
    {};

final Map<String, FocusNode> _CreatePinViewFocusNodes = {};

final Map<String, String? Function(String?)?> _CreatePinViewTextValidations = {
  PinValueValueKey: null,
};

mixin $CreatePinView on StatelessWidget {
  TextEditingController get pinValueController =>
      _getFormTextEditingController(PinValueValueKey);
  FocusNode get pinValueFocusNode => _getFormFocusNode(PinValueValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_CreatePinViewTextEditingControllers.containsKey(key)) {
      return _CreatePinViewTextEditingControllers[key]!;
    }
    _CreatePinViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _CreatePinViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_CreatePinViewFocusNodes.containsKey(key)) {
      return _CreatePinViewFocusNodes[key]!;
    }
    _CreatePinViewFocusNodes[key] = FocusNode();
    return _CreatePinViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    pinValueController.addListener(() => _updateFormData(model));
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
          PinValueValueKey: pinValueController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        PinValueValueKey: _getValidationMessage(PinValueValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _CreatePinViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_CreatePinViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _CreatePinViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _CreatePinViewFocusNodes.values) {
      focusNode.dispose();
    }

    _CreatePinViewTextEditingControllers.clear();
    _CreatePinViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get pinValueValue => this.formValueMap[PinValueValueKey] as String?;

  bool get hasPinValue =>
      this.formValueMap.containsKey(PinValueValueKey) &&
      (pinValueValue?.isNotEmpty ?? false);

  bool get hasPinValueValidationMessage =>
      this.fieldsValidationMessages[PinValueValueKey]?.isNotEmpty ?? false;

  String? get pinValueValidationMessage =>
      this.fieldsValidationMessages[PinValueValueKey];
}

extension Methods on FormViewModel {
  setPinValueValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PinValueValueKey] = validationMessage;
}
