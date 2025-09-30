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

import 'package:supabase/supabase.dart';

// import 'package:supabase/supabase.dart';

Future<String?> convertInvoiceListToJson(
    List<InvoiceStruct> invoiceList) async {
  // Create a list to hold the maps of each EstimateDataStruct item.
  // FlutterFlow's generated Data Types (Structs) have a .toMap() method,
  // which converts the struct instance into a Map<String, dynamic>.
  List<Map<String, dynamic>> listOfMaps =
      invoiceList.map((invoice) => invoice.toMap()).toList();

  // Convert the list of maps into a single JSON string.
  // This string will represent a JSON array where each element is a JSON object.
  String jsonString = jsonEncode(listOfMaps);

  // Return the JSON string
  return jsonString;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
