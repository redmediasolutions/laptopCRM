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

Future<StockRow?> bulkinsertintostock(List<AddStockStruct> stockitems) async {
  final List<Map<String, dynamic>> rowsToInsert = stockitems.map((item) {
    return {
      'product_reference': item.productReference,
      'business_ref': item.businessRef,
      'purchases_ref': item.purchaseRef,
      'product_serial': item.productSerial,
      'vendor_reference': item.vendorReference,
      'isSold': item.isSold,
      'stock_cost': item.stockCost,
      'condition': item.condition,
    };
  }).toList();

  // Perform bulk insert
  final response = await Supabase.instance.client
      .from('Stock') // Replace with your actual table name
      .insert(rowsToInsert);

  // Handle errors
  if (response.error != null) {
    throw Exception('Supabase insert error: ${response.error!.message}');
  }
}
