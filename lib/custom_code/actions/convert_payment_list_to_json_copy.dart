// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> convertPaymentListToJsonCopy(
    List<VendorPaymentStruct> paymentList) async {
  List<Map<String, dynamic>> listOfMaps =
      paymentList.map((payment) => payment.toMap()).toList();

  // Convert the list of maps into a single JSON string.
  // This string will represent a JSON array where each element is a JSON object.
  String jsonString = jsonEncode(listOfMaps);

  // Return the JSON string
  return jsonString;
}
