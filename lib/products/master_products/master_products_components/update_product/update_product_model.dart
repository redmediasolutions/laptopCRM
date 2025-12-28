import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_product_widget.dart' show UpdateProductWidget;
import 'package:flutter/material.dart';

class UpdateProductModel extends FlutterFlowModel<UpdateProductWidget> {
  ///  Local state fields for this component.

  bool isProductAdded = false;

  DateTime? dateofPurchase;

  bool disableDropdown = true;

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
  // State field(s) for configuration widget.
  FocusNode? configurationFocusNode;
  TextEditingController? configurationTextController;
  String? Function(BuildContext, String?)? configurationTextControllerValidator;
  // State field(s) for productCode widget.
  FocusNode? productCodeFocusNode;
  TextEditingController? productCodeTextController;
  String? Function(BuildContext, String?)? productCodeTextControllerValidator;
  // State field(s) for descriptionofproduct widget.
  FocusNode? descriptionofproductFocusNode;
  TextEditingController? descriptionofproductTextController;
  String? Function(BuildContext, String?)?
      descriptionofproductTextControllerValidator;
  // Stores action output result for [Custom Action - getTypeID] action in Button widget.
  TypeRow? typeRef;
  // Stores action output result for [Custom Action - getbrandId] action in Button widget.
  BrandRow? brandId;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ProductsRow>? newProductAdded;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameofProductFocusNode?.dispose();
    nameofProductTextController?.dispose();

    configurationFocusNode?.dispose();
    configurationTextController?.dispose();

    productCodeFocusNode?.dispose();
    productCodeTextController?.dispose();

    descriptionofproductFocusNode?.dispose();
    descriptionofproductTextController?.dispose();
  }
}
