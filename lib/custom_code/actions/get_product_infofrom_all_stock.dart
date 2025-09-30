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

Future<Allstockv2Row?> getProductInfofromAllStock(String stockReference) async {
  final response = await Supabase.instance.client
      .from('allstockv2')
      .select()
      .eq('stock_reference', stockReference)
      .maybeSingle();

  if (response == null) {
    return null;
  }
  return Allstockv2Row(response);
}
