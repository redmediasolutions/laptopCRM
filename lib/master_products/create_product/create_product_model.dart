import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_product_widget.dart' show CreateProductWidget;
import 'package:flutter/material.dart';

class CreateProductModel extends FlutterFlowModel<CreateProductWidget> {
  ///  Local state fields for this component.

  bool isProductAdded = false;

  DateTime? dateofPurchase;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for typeProduct widget.
  String? typeProductValue;
  FormFieldController<String>? typeProductValueController;
  // State field(s) for brand widget.
  String? brandValue;
  FormFieldController<String>? brandValueController;
  // State field(s) for nameofProduct widget.
  FocusNode? nameofProductFocusNode;
  TextEditingController? nameofProductTextController;
  String? Function(BuildContext, String?)? nameofProductTextControllerValidator;
  String? _nameofProductTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name of Product is required';
    }

    return null;
  }

  bool isDataUploading_uploadDataProductImage = false;
  FFUploadedFile uploadedLocalFile_uploadDataProductImage =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataProductImage = '';

  // State field(s) for configuration widget.
  FocusNode? configurationFocusNode;
  TextEditingController? configurationTextController;
  String? Function(BuildContext, String?)? configurationTextControllerValidator;
  String? _configurationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Product/Item Configuration is required';
    }

    return null;
  }

  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  // State field(s) for descriptionofProduct widget.
  FocusNode? descriptionofProductFocusNode;
  TextEditingController? descriptionofProductTextController;
  String? Function(BuildContext, String?)?
      descriptionofProductTextControllerValidator;
  String? _descriptionofProductTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description of the Product is required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? formValidated;
  // Stores action output result for [Custom Action - getTypeID] action in Button widget.
  TypeRow? typeRef;
  // Stores action output result for [Custom Action - getbrandId] action in Button widget.
  BrandRow? selectedBrand;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ProductsRow? newProductAdded;

  @override
  void initState(BuildContext context) {
    nameofProductTextControllerValidator =
        _nameofProductTextControllerValidator;
    configurationTextControllerValidator =
        _configurationTextControllerValidator;
    descriptionofProductTextControllerValidator =
        _descriptionofProductTextControllerValidator;
  }

  @override
  void dispose() {
    nameofProductFocusNode?.dispose();
    nameofProductTextController?.dispose();

    configurationFocusNode?.dispose();
    configurationTextController?.dispose();

    codeFocusNode?.dispose();
    codeTextController?.dispose();

    descriptionofProductFocusNode?.dispose();
    descriptionofProductTextController?.dispose();
  }
}
