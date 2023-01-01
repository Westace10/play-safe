// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String GamerIdValueKey = 'gamerId';
const String GamerEmailValueKey = 'gamerEmail';

final Map<String, TextEditingController>
    _CreateAccountViewTextEditingControllers = {};

final Map<String, FocusNode> _CreateAccountViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _CreateAccountViewTextValidations = {
  GamerIdValueKey: null,
  GamerEmailValueKey: null,
};

mixin $CreateAccountView on StatelessWidget {
  TextEditingController get gamerIdController =>
      _getFormTextEditingController(GamerIdValueKey);
  TextEditingController get gamerEmailController =>
      _getFormTextEditingController(GamerEmailValueKey);
  FocusNode get gamerIdFocusNode => _getFormFocusNode(GamerIdValueKey);
  FocusNode get gamerEmailFocusNode => _getFormFocusNode(GamerEmailValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_CreateAccountViewTextEditingControllers.containsKey(key)) {
      return _CreateAccountViewTextEditingControllers[key]!;
    }
    _CreateAccountViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _CreateAccountViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_CreateAccountViewFocusNodes.containsKey(key)) {
      return _CreateAccountViewFocusNodes[key]!;
    }
    _CreateAccountViewFocusNodes[key] = FocusNode();
    return _CreateAccountViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    gamerIdController.addListener(() => _updateFormData(model));
    gamerEmailController.addListener(() => _updateFormData(model));
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
          GamerIdValueKey: gamerIdController.text,
          GamerEmailValueKey: gamerEmailController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        GamerIdValueKey: _getValidationMessage(GamerIdValueKey),
        GamerEmailValueKey: _getValidationMessage(GamerEmailValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _CreateAccountViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_CreateAccountViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _CreateAccountViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _CreateAccountViewFocusNodes.values) {
      focusNode.dispose();
    }

    _CreateAccountViewTextEditingControllers.clear();
    _CreateAccountViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get gamerIdValue => this.formValueMap[GamerIdValueKey] as String?;
  String? get gamerEmailValue =>
      this.formValueMap[GamerEmailValueKey] as String?;

  bool get hasGamerId =>
      this.formValueMap.containsKey(GamerIdValueKey) &&
      (gamerIdValue?.isNotEmpty ?? false);
  bool get hasGamerEmail =>
      this.formValueMap.containsKey(GamerEmailValueKey) &&
      (gamerEmailValue?.isNotEmpty ?? false);

  bool get hasGamerIdValidationMessage =>
      this.fieldsValidationMessages[GamerIdValueKey]?.isNotEmpty ?? false;
  bool get hasGamerEmailValidationMessage =>
      this.fieldsValidationMessages[GamerEmailValueKey]?.isNotEmpty ?? false;

  String? get gamerIdValidationMessage =>
      this.fieldsValidationMessages[GamerIdValueKey];
  String? get gamerEmailValidationMessage =>
      this.fieldsValidationMessages[GamerEmailValueKey];
}

extension Methods on FormViewModel {
  setGamerIdValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[GamerIdValueKey] = validationMessage;
  setGamerEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[GamerEmailValueKey] = validationMessage;
}
