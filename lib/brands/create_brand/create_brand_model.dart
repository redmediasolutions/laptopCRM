import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_brand_widget.dart' show CreateBrandWidget;
import 'package:flutter/material.dart';

class CreateBrandModel extends FlutterFlowModel<CreateBrandWidget> {
  ///  Local state fields for this component.

  bool isSaved = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadDataBrand = false;
  FFUploadedFile uploadedLocalFile_uploadDataBrand =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataBrand = '';

  bool isDataUploading_uploadDataCoverimage = false;
  FFUploadedFile uploadedLocalFile_uploadDataCoverimage =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataCoverimage = '';

  // State field(s) for nameofProduct widget.
  FocusNode? nameofProductFocusNode1;
  TextEditingController? nameofProductTextController1;
  String? Function(BuildContext, String?)?
      nameofProductTextController1Validator;
  // State field(s) for nameofProduct widget.
  FocusNode? nameofProductFocusNode2;
  TextEditingController? nameofProductTextController2;
  String? Function(BuildContext, String?)?
      nameofProductTextController2Validator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  BrandRow? newBrandAdded;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameofProductFocusNode1?.dispose();
    nameofProductTextController1?.dispose();

    nameofProductFocusNode2?.dispose();
    nameofProductTextController2?.dispose();
  }
}
