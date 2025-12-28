import '/flutter_flow/flutter_flow_util.dart';
import 'update_brand_widget.dart' show UpdateBrandWidget;
import 'package:flutter/material.dart';

class UpdateBrandModel extends FlutterFlowModel<UpdateBrandWidget> {
  ///  Local state fields for this component.

  bool isUploadingLogo = false;

  bool isUploadingImage = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadDataBrandImages = false;
  FFUploadedFile uploadedLocalFile_uploadDataBrandImages =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataBrandImages = '';

  bool isDataUploading_uploadDataBrandcoverimage = false;
  FFUploadedFile uploadedLocalFile_uploadDataBrandcoverimage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataBrandcoverimage = '';

  // State field(s) for nameofProduct widget.
  FocusNode? nameofProductFocusNode;
  TextEditingController? nameofProductTextController;
  String? Function(BuildContext, String?)? nameofProductTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameofProductFocusNode?.dispose();
    nameofProductTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
