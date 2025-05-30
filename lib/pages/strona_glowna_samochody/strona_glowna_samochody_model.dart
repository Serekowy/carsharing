import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'strona_glowna_samochody_widget.dart' show StronaGlownaSamochodyWidget;
import 'package:flutter/material.dart';

class StronaGlownaSamochodyModel
    extends FlutterFlowModel<StronaGlownaSamochodyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
