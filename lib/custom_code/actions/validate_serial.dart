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

Future<List<AddProductserialStruct>> validateSerial(
  List<AddProductserialStruct>? serialNos,
  List<Allstockv2Row>? allstock,
) async {
  if (serialNos == null || allstock == null) {
    return [];
  }

  // Extract existing serial numbers from stock, normalize to lowercase
  final stockSerials = allstock
      .map((s) => s.productSerial?.trim().toLowerCase())
      .where((s) => s != null && s.isNotEmpty)
      .toSet();

  // Update isDuplicate flag for each serial
  for (var serial in serialNos) {
    final value = serial.serial?.trim().toLowerCase();
    if (value != null && stockSerials.contains(value)) {
      serial.isDuplicate = true;
    } else {
      serial.isDuplicate = false;
    }
  }

  return serialNos;
}
