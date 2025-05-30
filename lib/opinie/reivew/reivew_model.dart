import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'reivew_widget.dart' show ReivewWidget;
import 'package:flutter/material.dart';

class ReivewModel extends FlutterFlowModel<ReivewWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
