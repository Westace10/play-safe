// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String NewGamerEmailValueKey = 'newGamerEmail';
const String PinValueValueKey = 'pinValue';

final Map<String, TextEditingController>
    _AuthenticationViewTextEditingControllers = {};

final Map<String, FocusNode> _AuthenticationViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _AuthenticationViewTextValidations = {
  NewGamerEmailValueKey: null,
  PinValueValueKey: null,
};

mixin $AuthenticationView on StatelessWidget {
  TextEditingController get newGamerEmailController =>
      _getFormTextEditingController(NewGamerEmailValueKey);
  TextEditingController get pinValueController =>
      _getFormTextEditingController(PinValueValueKey);
  FocusNode get newGamerEmailFocusNode =>
      _getFormFocusNode(NewGamerEmailValueKey);
  FocusNode get pinValueFocusNode => _getFormFocusNode(PinValueValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_AuthenticationViewTextEditingControllers.containsKey(key)) {
      return _AuthenticationViewTextEditingControllers[key]!;
    }
    _AuthenticationViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _AuthenticationViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_AuthenticationViewFocusNodes.containsKey(key)) {
      return _AuthenticationViewFocusNodes[key]!;
    }
    _AuthenticationViewFocusNodes[key] = FocusNode();
    return _AuthenticationViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    newGamerEmailController.addListener(() => _updateFormData(model));
    pinValueController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated('Use syncFormWithViewModel instead.'
      'This feature was deprecated after 3.1.0.')
  void listenToFormUpdated(FormViewModel model) {
    newGamerEmailController.addListener(() => _updateFormData(model));
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
          NewGamerEmailValueKey: newGamerEmailController.text,
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
        NewGamerEmailValueKey: _getValidationMessage(NewGamerEmailValueKey),
        PinValueValueKey: _getValidationMessage(PinValueValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _AuthenticationViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_AuthenticationViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _AuthenticationViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _AuthenticationViewFocusNodes.values) {
      focusNode.dispose();
    }

    _AuthenticationViewTextEditingControllers.clear();
    _AuthenticationViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get newGamerEmailValue =>
      this.formValueMap[NewGamerEmailValueKey] as String?;
  String? get pinValueValue => this.formValueMap[PinValueValueKey] as String?;

  bool get hasNewGamerEmail =>
      this.formValueMap.containsKey(NewGamerEmailValueKey) &&
      (newGamerEmailValue?.isNotEmpty ?? false);
  bool get hasPinValue =>
      this.formValueMap.containsKey(PinValueValueKey) &&
      (pinValueValue?.isNotEmpty ?? false);

  bool get hasNewGamerEmailValidationMessage =>
      this.fieldsValidationMessages[NewGamerEmailValueKey]?.isNotEmpty ?? false;
  bool get hasPinValueValidationMessage =>
      this.fieldsValidationMessages[PinValueValueKey]?.isNotEmpty ?? false;

  String? get newGamerEmailValidationMessage =>
      this.fieldsValidationMessages[NewGamerEmailValueKey];
  String? get pinValueValidationMessage =>
      this.fieldsValidationMessages[PinValueValueKey];
}

extension Methods on FormViewModel {
  setNewGamerEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NewGamerEmailValueKey] = validationMessage;
  setPinValueValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PinValueValueKey] = validationMessage;
}
