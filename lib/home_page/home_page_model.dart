import '/auth/base_auth_user_provider.dart';
import '/backend/backend.dart';
import '/components/background_primary_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BackgroundPrimaryView component.
  late BackgroundPrimaryViewModel backgroundPrimaryViewModel;
  // State field(s) for StaggeredView widget.

  PagingController<DocumentSnapshot?, ShopListRecord>?
      staggeredViewPagingController;
  Query? staggeredViewPagingQuery;
  List<StreamSubscription?> staggeredViewStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {
    backgroundPrimaryViewModel =
        createModel(context, () => BackgroundPrimaryViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backgroundPrimaryViewModel.dispose();
    staggeredViewStreamSubscriptions.forEach((s) => s?.cancel());
    staggeredViewPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, ShopListRecord>
      setStaggeredViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    staggeredViewPagingController ??=
        _createStaggeredViewController(query, parent);
    if (staggeredViewPagingQuery != query) {
      staggeredViewPagingQuery = query;
      staggeredViewPagingController?.refresh();
    }
    return staggeredViewPagingController!;
  }

  PagingController<DocumentSnapshot?, ShopListRecord>
      _createStaggeredViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, ShopListRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryShopListRecordPage(
          queryBuilder: (_) => staggeredViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: staggeredViewStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
