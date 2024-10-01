import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_group_widget.dart' show EditGroupWidget;
import 'package:flutter/material.dart';

class EditGroupModel extends FlutterFlowModel<EditGroupWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DescTextField widget.
  FocusNode? descTextFieldFocusNode;
  TextEditingController? descTextFieldTextController;
  String? Function(BuildContext, String?)? descTextFieldTextControllerValidator;
  // State field(s) for admin1TextField widget.
  FocusNode? admin1TextFieldFocusNode;
  TextEditingController? admin1TextFieldTextController;
  String? Function(BuildContext, String?)?
      admin1TextFieldTextControllerValidator;
  // State field(s) for admin2TextField widget.
  FocusNode? admin2TextFieldFocusNode;
  TextEditingController? admin2TextFieldTextController;
  String? Function(BuildContext, String?)?
      admin2TextFieldTextControllerValidator;
  // State field(s) for admin3TextField widget.
  FocusNode? admin3TextFieldFocusNode;
  TextEditingController? admin3TextFieldTextController;
  String? Function(BuildContext, String?)?
      admin3TextFieldTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
    textFieldFocusNode?.dispose();
    textController1?.dispose();

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
