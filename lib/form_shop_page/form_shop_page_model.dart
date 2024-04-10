import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/background_primary_view_widget.dart';
import '/components/loading_view_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'form_shop_page_widget.dart' show FormShopPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormShopPageModel extends FlutterFlowModel<FormShopPageWidget> {
  ///  Local state fields for this page.

  List<String> imageTmpList = [];
  void addToImageTmpList(String item) => imageTmpList.add(item);
  void removeFromImageTmpList(String item) => imageTmpList.remove(item);
  void removeAtIndexFromImageTmpList(int index) => imageTmpList.removeAt(index);
  void insertAtIndexInImageTmpList(int index, String item) =>
      imageTmpList.insert(index, item);
  void updateImageTmpListAtIndex(int index, Function(String) updateFn) =>
      imageTmpList[index] = updateFn(imageTmpList[index]);

  bool isLoading = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for BackgroundPrimaryView component.
  late BackgroundPrimaryViewModel backgroundPrimaryViewModel;
  // State field(s) for title widget.
  FocusNode? titleFocusNode1;
  TextEditingController? titleController1;
  String? Function(BuildContext, String?)? titleController1Validator;
  // State field(s) for detail widget.
  FocusNode? detailFocusNode;
  TextEditingController? detailController;
  String? Function(BuildContext, String?)? detailControllerValidator;
  // State field(s) for title widget.
  FocusNode? titleFocusNode2;
  TextEditingController? titleController2;
  String? Function(BuildContext, String?)? titleController2Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Model for LoadingView component.
  late LoadingViewModel loadingViewModel;

  @override
  void initState(BuildContext context) {
    backgroundPrimaryViewModel =
        createModel(context, () => BackgroundPrimaryViewModel());
    loadingViewModel = createModel(context, () => LoadingViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backgroundPrimaryViewModel.dispose();
    titleFocusNode1?.dispose();
    titleController1?.dispose();

    detailFocusNode?.dispose();
    detailController?.dispose();

    titleFocusNode2?.dispose();
    titleController2?.dispose();

    loadingViewModel.dispose();
  }
}
