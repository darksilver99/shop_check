import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'background_primary_view_model.dart';
export 'background_primary_view_model.dart';

class BackgroundPrimaryViewWidget extends StatefulWidget {
  const BackgroundPrimaryViewWidget({super.key});

  @override
  State<BackgroundPrimaryViewWidget> createState() =>
      _BackgroundPrimaryViewWidgetState();
}

class _BackgroundPrimaryViewWidgetState
    extends State<BackgroundPrimaryViewWidget> {
  late BackgroundPrimaryViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackgroundPrimaryViewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.65,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).primary,
            Color(0xFFF4767E),
            FlutterFlowTheme.of(context).tertiary
          ],
          stops: [0.0, 0.5, 1.0],
          begin: AlignmentDirectional(-1.0, -1.0),
          end: AlignmentDirectional(1.0, 1.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              FlutterFlowTheme.of(context).secondaryBackground
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
        ),
      ),
    );
  }
}
