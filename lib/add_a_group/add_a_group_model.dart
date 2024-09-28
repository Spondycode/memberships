import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_a_group_widget.dart' show AddAGroupWidget;
import 'package:flutter/material.dart';

class AddAGroupModel extends FlutterFlowModel<AddAGroupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldTextController;
  String? Function(BuildContext, String?)? nameTextFieldTextControllerValidator;
  // State field(s) for DescTextField widget.
  FocusNode? descTextFieldFocusNode;
  TextEditingController? descTextFieldTextController;
  String? Function(BuildContext, String?)? descTextFieldTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Admin1TextField widget.
  FocusNode? admin1TextFieldFocusNode;
  TextEditingController? admin1TextFieldTextController;
  String? Function(BuildContext, String?)?
      admin1TextFieldTextControllerValidator;
  // State field(s) for Admin2TextField widget.
  FocusNode? admin2TextFieldFocusNode;
  TextEditingController? admin2TextFieldTextController;
  String? Function(BuildContext, String?)?
      admin2TextFieldTextControllerValidator;
  // State field(s) for Admin3TextField widget.
  FocusNode? admin3TextFieldFocusNode;
  TextEditingController? admin3TextFieldTextController;
  String? Function(BuildContext, String?)?
      admin3TextFieldTextControllerValidator;
  // State field(s) for NotifyOfChangesCheckbox widget.
  bool? notifyOfChangesCheckboxValue;
  // State field(s) for PrivacyDropDown widget.
  String? privacyDropDownValue;
  FormFieldController<String>? privacyDropDownValueController;
  // State field(s) for EmailSubDefaultsDropDown widget.
  String? emailSubDefaultsDropDownValue;
  FormFieldController<String>? emailSubDefaultsDropDownValueController;
  // State field(s) for WelcomeEmailCheckbox widget.
  bool? welcomeEmailCheckboxValue;
  // State field(s) for welcomeEmailTitleTextField widget.
  FocusNode? welcomeEmailTitleTextFieldFocusNode;
  TextEditingController? welcomeEmailTitleTextFieldTextController;
  String? Function(BuildContext, String?)?
      welcomeEmailTitleTextFieldTextControllerValidator;
  // State field(s) for welcomeEmailContentTextField widget.
  FocusNode? welcomeEmailContentTextFieldFocusNode;
  TextEditingController? welcomeEmailContentTextFieldTextController;
  String? Function(BuildContext, String?)?
      welcomeEmailContentTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameTextFieldFocusNode?.dispose();
    nameTextFieldTextController?.dispose();

    descTextFieldFocusNode?.dispose();
    descTextFieldTextController?.dispose();

    admin1TextFieldFocusNode?.dispose();
    admin1TextFieldTextController?.dispose();

    admin2TextFieldFocusNode?.dispose();
    admin2TextFieldTextController?.dispose();

    admin3TextFieldFocusNode?.dispose();
    admin3TextFieldTextController?.dispose();

    welcomeEmailTitleTextFieldFocusNode?.dispose();
    welcomeEmailTitleTextFieldTextController?.dispose();

    welcomeEmailContentTextFieldFocusNode?.dispose();
    welcomeEmailContentTextFieldTextController?.dispose();
  }
}
