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

Future stockDecrement(
  List<InvoiceStruct> invoiceItems,
  List<StockRow>? stocktable,
) async {
  if (stocktable == null) return;

  for (final invoice in invoiceItems) {
    final stockRefId = invoice.stockRef;
    final qtyToDeduct = invoice.invoiceItemQuantity ?? 0;

    // Find matching stock using try-catch instead of orElse: () => null
    StockRow? matchingStock;
    try {
      matchingStock = stocktable.firstWhere(
        (stock) => stock.id == stockRefId,
      );
    } catch (e) {
      // No matching stock found
      continue;
    }

    // Parse stock quantity from String to int
    final currentQty = int.tryParse(matchingStock.stockQuantity ?? '0') ?? 0;
    final newQty = currentQty - qtyToDeduct;
    final updatedQty = newQty < 0 ? 0 : newQty;

    // Update stock in Supabase
    await Supabase.instance.client
        .from('Stock')
        .update({'stock_quantity': updatedQty.toString()})
        .eq('id', matchingStock.id)
        .maybeSingle(); // instead of .execute()
  }
}
