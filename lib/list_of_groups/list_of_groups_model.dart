import '/all_components/nav_bar1/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_of_groups_widget.dart' show ListOfGroupsWidget;
import 'package:flutter/material.dart';

class ListOfGroupsModel extends FlutterFlowModel<ListOfGroupsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    navBar1Model.dispose();
  }
}
