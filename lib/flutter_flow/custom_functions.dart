import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<String>? combineNamePhone(
  List<String>? name,
  List<String>? phone,
) {
// Combine name & phone with this "•"
  if (name == null || phone == null) return null;
  List<String> combined = [];
  for (int i = 0; i < math.min(name.length, phone.length); i++) {
    combined.add('${name[i]} • ${phone[i]}');
  }
  return combined;
}

double? purchasePricexquantity(
  String? purchasePrice,
  String? quantity,
) {
  // purchasePrice x Quantity
  if (purchasePrice == null || quantity == null) return null;
  double price = double.tryParse(purchasePrice) ?? 0.0;
  int qty = int.tryParse(quantity) ?? 0;
  return price * qty;
}

int stringtoInteger(String string) {
  // string to integer
  return int.parse(string);
}

String? generateBarCode(List<StockRow> allbarcode) {
  // Function to generate a random 8-digit alphanumeric code
  String generateRandomCode() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = math.Random();
    return List.generate(8, (index) => chars[random.nextInt(chars.length)])
        .join();
  }

  // Create a Set of existing barcodes for fast lookup
  final existingCodes = allbarcode.map((e) => e?.barcodeGen).toSet();

  // Try generating a unique code, with a max limit of attempts
  const maxAttempts = 1000;
  for (int i = 0; i < maxAttempts; i++) {
    final newCode = generateRandomCode();
    if (!existingCodes.contains(newCode)) {
      return newCode;
    }
  }

  // If we failed to generate a unique code after maxAttempts, return null
  return null;
}

double stringtoDouble(String amount) {
  // String to Double
// Convert string to double
  return double.tryParse(amount) ?? 0.0;
}

double? calculateTax(
  double? quantity,
  double? cost,
  double? tax,
) {
  if (quantity == null || cost == null || tax == null) {
    return null;
  }

  return (quantity * cost) * tax / 100;
}

List<String>? combineBusinessName(
  List<String> businessName,
  List<String> customerName,
) {
  if (businessName.isEmpty && customerName.isEmpty) {
    return null;
  }

  // Get the minimum length to avoid index out of range errors
  final minLength = businessName.length < customerName.length
      ? businessName.length
      : customerName.length;

  List<String> combinedList = [];

  for (int i = 0; i < minLength; i++) {
    final bName = businessName[i].trim();
    final cName = customerName[i].trim();

    if (bName.isEmpty && cName.isEmpty) {
      combinedList.add('');
    } else if (bName.isEmpty) {
      combinedList.add(cName);
    } else if (cName.isEmpty) {
      combinedList.add(bName);
    } else {
      combinedList.add('$bName • $cName');
    }
  }

  return combinedList;
}

double? calculateSubtotal(
  List<InvoiceStruct> invoice,
  double? discount,
) {
// Calculate the total from invoiceAmount field and subtract discount
  double total = invoice.fold(0.0, (sum, item) => sum + item.invoiceItemAmount);
  if (discount != null) {
    total -= discount;
  }
  return total > 0 ? total : null;
}

double? calculateTaxTotal(List<InvoiceStruct>? invoice) {
  // return a sum of all dataType field invoiceTaxAmount
  if (invoice == null) return null;
  double totalTax = 0.0;
  for (var invoice in invoice) {
    totalTax += invoice.invoiceTaxAmount ?? 0.0;
  }
  return totalTax;
}

double? calculateGrandTotal(
  double? subtotal,
  double? tax,
) {
  // subtotal + tax
  if (subtotal == null || tax == null) {
    return null; // Return null if either value is null
  }
  return subtotal + tax; // Calculate and return the grand total
}

double? calculateLineTotal(
  int? quantity,
  double taxRate,
  double? cost,
) {
  if (quantity == null || cost == null) {
    return null;
  }

  final total = quantity * cost;
  final tax = total * taxRate / 100;
  final lineTotal = total + tax;

  return lineTotal;
}

dynamic convertStringtoJson(String? json) {
  // convert string to Json
  if (json == null) return null; // Return null if the input string is null
  return jsonDecode(json); // Decode the JSON string into a dynamic object
}

double? calculateVendorSubtotal(
  List<VendorPaymentStruct>? vendorData,
  double? discount,
) {
  if (vendorData == null) return null;

  // Sum up itemLineCost from all vendorData entries
  double total = vendorData.fold(
    0.0,
    (sum, item) => sum + (item.itemLineCost ?? 0.0),
  );

  if (discount != null) {
    total -= discount;
  }

  return total > 0 ? total : null;
}

List<AddProductserialStruct>? addbasedonCount(
  int? count,
  String? defaultSerialValue,
) {
  if (count == null || count <= 0) return null;

  return List.generate(
    count,
    (index) => AddProductserialStruct(
      serial: defaultSerialValue,
    ),
  );
}

List<AddStockStruct>? addStockbasedonQuantity(
  int quantity,
  List<AddProductserialStruct> serialBarcode,
  int? productRef,
  int? purchasesRef,
  int? vendorRef,
  int? businessRef,
  String? productCost,
  List<AddProductserialStruct> condition,
) {
  if (serialBarcode.length < quantity) return null;
  if (condition.length < quantity) return null;

  return List.generate(quantity, (index) {
    return AddStockStruct(
      productReference: productRef,
      purchaseRef: purchasesRef,
      vendorReference: vendorRef,
      productSerial: serialBarcode[index].serial,
      businessRef: businessRef,
      stockCost: productCost,
      condition: condition[index].condition,
    );
  });
}

String? amountinWords(double amount) {
  final units = [
    "",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
    "Thirteen",
    "Fourteen",
    "Fifteen",
    "Sixteen",
    "Seventeen",
    "Eighteen",
    "Nineteen"
  ];
  final tens = [
    "",
    "",
    "Twenty",
    "Thirty",
    "Forty",
    "Fifty",
    "Sixty",
    "Seventy",
    "Eighty",
    "Ninety"
  ];

  String convertToWords(int n) {
    if (n < 20) return units[n];
    if (n < 100)
      return tens[n ~/ 10] + (n % 10 != 0 ? " " + units[n % 10] : "");
    if (n < 1000) {
      return units[n ~/ 100] +
          " Hundred" +
          (n % 100 != 0 ? " and " + convertToWords(n % 100) : "");
    }
    if (n < 100000) {
      return convertToWords(n ~/ 1000) +
          " Thousand" +
          (n % 1000 != 0 ? " " + convertToWords(n % 1000) : "");
    }
    if (n < 10000000) {
      return convertToWords(n ~/ 100000) +
          " Lakh" +
          (n % 100000 != 0 ? " " + convertToWords(n % 100000) : "");
    }
    return convertToWords(n ~/ 10000000) +
        " Crore" +
        (n % 10000000 != 0 ? " " + convertToWords(n % 10000000) : "");
  }

  int rupees = amount.floor();
  int paise = ((amount - rupees) * 100).round();

  String result = "Rupees " + convertToWords(rupees);
  if (paise > 0) {
    result += " and " + convertToWords(paise) + " Paise";
  }
  result += " Only";

  return result;
}

double? grandtotalroundoff(double? amount) {
  if (amount == null) return null;

  double decimalPart = amount - amount.floor();
  if (decimalPart >= 0.50) {
    return amount.floorToDouble() + 1;
  } else {
    return amount.floorToDouble();
  }
}

bool ishavingdecimal(double? amount) {
  if (amount == null) return false;
  return amount % 1 != 0;
}

String? greeting(DateTime? currentTime) {
  if (currentTime == null) {
    return null;
  }
  final hour = currentTime.hour;
  if (hour >= 5 && hour < 12) {
    return 'Good morning';
  } else if (hour >= 12 && hour < 17) {
    return 'Good afternoon';
  } else if (hour >= 17 && hour < 21) {
    return 'Good evening';
  } else {
    return 'Good night';
  }
}

double? yesterdaySales(List<AllInvoicesRow> allinvoices) {
  final yesterday = DateTime.now().subtract(const Duration(days: 1));
  double total = 0.0;
  for (final row in allinvoices) {
    if (row.date?.year == yesterday.year &&
        row.date?.month == yesterday.month &&
        row.date?.day == yesterday.day) {
      total += row.invoicesGrandTotal ?? 0.0;
    }
  }
  return total;
}

double? todaySale(List<AllInvoicesRow> allinvoices) {
  final today = DateTime.now();
  double total = 0.0;
  for (final row in allinvoices) {
    if (row.date?.year == today.year &&
        row.date?.month == today.month &&
        row.date?.day == today.day) {
      total += row.invoicesGrandTotal ?? 0.0;
    }
  }
  return total;
}

List<StockSearchStruct>? stockSearch(
  String? searchinput,
  List<Allstockv2Row> stocks,
) {
  if (searchinput == null || searchinput.trim().isEmpty) {
    return null; // nothing to search
  }

  final normalizedSearch = searchinput.toLowerCase().trim();

  // Filter stocks that match search input
  final filteredStocks = stocks.where((stock) {
    final productName = stock.productName?.toLowerCase() ?? '';
    final productSerial = stock.productSerial?.toLowerCase() ?? '';

    return productName.contains(normalizedSearch) ||
        productSerial.contains(normalizedSearch);
  }).toList();

  if (filteredStocks.isEmpty) {
    return null;
  }

  // Map filtered stocks to List<StockSearchStruct>
  return filteredStocks
      .map((stock) => StockSearchStruct(
            model: stock.productName ?? '',
            productDescription: stock.productDescription,
            serialNo: stock.productSerial ?? '',
            vendor: stock.vendorName ?? '',
            costPrice: stock.costprice,
            salePrice: stock.saleprice,
            condition: stock.condition,
            purchaseDate: stock.purchaseDate,
            isSold: stock.isSold,
            stockReference: stock.stockReference,
            productconfig: stock.productConfig,
            stockid: stock.stockId,
            purchaseid: stock.purchasesid,
            phone: stock.vendorPhone,
            productReference: stock.productReference,
          ))
      .toList();
}

List<MasterListSearchStruct>? masterListSearch(
  String? searchInput,
  List<MasterlistproductsRow> products,
) {
  if (searchInput == null || searchInput.trim().isEmpty) {
    return null;
  }

  final normalizedSearch = searchInput.toLowerCase().trim();

  final filteredProducts = products.where((product) {
    final productName = product.productName?.toLowerCase() ?? '';
    final productDescription = product.productDescription?.toLowerCase() ?? '';
    final productConfig = product.productConfig?.toLowerCase() ?? '';
    final typeName = product.typeName?.toLowerCase() ?? '';
    final brandname = product.name?.toLowerCase() ?? '';
    final productReference = product.productreference?.toLowerCase() ?? '';

    return productName.contains(normalizedSearch) ||
        productDescription.contains(normalizedSearch) ||
        productConfig.contains(normalizedSearch) ||
        typeName.contains(normalizedSearch) ||
        brandname.contains(normalizedSearch) ||
        productReference.contains(normalizedSearch);
  }).toList();

  if (filteredProducts.isEmpty) {
    return null;
  }

  return filteredProducts
      .map((product) => MasterListSearchStruct(
            name: product.productName ?? '',
            configuration: product.productConfig ?? '',
            type: product.typeName ?? '',
            brand: product.name ?? '',
            productDescription: product.productDescription ?? '',
            productReference: product.productreference ?? '',
            productid: product.productid,
            brandref: product.brandreference,
            typeRef: product.typereference,
            productCode: product.productcode,
          ))
      .toList();
}

List<SearchCustomerStruct>? searchCustomer(
  String? searchInput,
  List<CustomersRow> customer,
) {
  if (searchInput == null || searchInput.trim().isEmpty) {
    return null; // nothing to search
  }

  final normalizedSearch = searchInput.toLowerCase().trim();

  // Filter customers that match search input
  final filteredCustomers = customer.where((customer) {
    final name = customer.customerName?.toLowerCase() ?? '';
    final email = customer.customerEmail?.toLowerCase() ?? '';
    final phone = customer.customerPhone?.toLowerCase() ?? '';
    final businessName = customer.customerBusinessname?.toLowerCase() ?? '';
    final customerGst = customer.customerGST?.toLowerCase() ?? '';

    return name.contains(normalizedSearch) ||
        phone.contains(normalizedSearch) ||
        businessName.contains(normalizedSearch) ||
        customerGst.contains(normalizedSearch) ||
        email.contains(normalizedSearch);
  }).toList();

  if (filteredCustomers.isEmpty) {
    return null;
  }

  // Map filtered customers to List<SearchCustomerStruct>
  return filteredCustomers
      .map((customer) => SearchCustomerStruct(
            name: customer.customerName ?? '',
            email: customer.customerEmail ?? '',
            phone: customer.customerPhone,
          ))
      .toList();
}

List<SearchVendorStruct>? searchVendor(
  String? searchInput,
  List<VendorsRow> vendors,
) {
  if (searchInput == null || searchInput.trim().isEmpty) {
    return null; // nothing to search
  }

  final normalizedSearch = searchInput.toLowerCase().trim();

  // Filter vendors that match search input
  final filteredVendors = vendors.where((vendor) {
    final name = vendor.vendorName?.toLowerCase() ?? '';
    final email = vendor.vendorEmail?.toLowerCase() ?? '';
    final address = vendor.vendorAddress?.toLowerCase() ?? '';
    final phone = vendor.vendorPhone?.toLowerCase() ?? '';

    return name.contains(normalizedSearch) ||
        email.contains(normalizedSearch) ||
        address.contains(normalizedSearch) ||
        phone.contains(normalizedSearch);
  }).toList();

  if (filteredVendors.isEmpty) {
    return null;
  }

  // Map filtered vendors to List<SearchVendorStruct>
  return filteredVendors
      .map((vendor) => SearchVendorStruct(
            name: vendor.vendorName ?? '',
            email: vendor.vendorEmail ?? '',
            phone: vendor.vendorPhone ?? '',
          ))
      .toList();
}

double? roundoffTotal(double? amount) {
  if (amount == null) return null;

  double decimalPart = amount - amount.floor();
  if (decimalPart >= 0.50) {
    return amount.floorToDouble() + 1;
  } else {
    return amount.floorToDouble();
  }
}

String? stringtoImagepath(String? url) {
  // convert url to Imagepath
  if (url == null || url.isEmpty) {
    return null; // Return null if the URL is null or empty
  }
  return url; // Return the URL as the image path
}

bool? isTrue(List<AddProductserialStruct>? productSerial) {
  if (productSerial == null) return null;

  for (final serial in productSerial) {
    if (serial.isDuplicate == true) {
      return false;
    }
  }
  return true;
}

bool isEven(String inputInteger) {
  int? number = int.tryParse(inputInteger);
  if (number == null)
    return false; // or throw an error, depending on your needs
  return number % 2 == 0;
}

dynamic stringtoJson(String? string) {
  // convert string to JSON
  if (string == null) {
    return null;
  }
  return json.decode(string);
}

DateTime? jsontoDateTime(dynamic json) {
  // parse json to DateTime
  if (json is String) {
    return DateTime.tryParse(json);
  }
  return null;
}

int? increment(int? index) {
  // increment index +1
  if (index == null) {
    return null; // Return null if the input is null
  }
  return index + 1; // Increment the index by 1
}

double? calculateTotal(List<PaymentsRow>? listofPayments) {
  if (listofPayments == null || listofPayments.isEmpty) {
    return 0.0;
  }

  double total = 0.0;
  for (final payment in listofPayments) {
    total += (payment.paymentAmount ?? 0.0);
  }
  return total;
}

String? incrementInvoiceNumber(List<AllInvoicesRow>? invoicenumber) {
  if (invoicenumber == null || invoicenumber.isEmpty) {
    return '001';
  }

  // Get the invoice with the highest invoice_id (latest)
  final latestRow = invoicenumber.reduce((a, b) {
    final aId = (a as dynamic).invoiceId ?? 0;
    final bId = (b as dynamic).invoiceId ?? 0;
    return (aId > bId) ? a : b;
  });

  // Extract last invoice number string
  final lastNumberStr = (latestRow as dynamic).invNumber ?? 'INV-000';

  // Extract numeric part from the invoice string
  final match = RegExp(r'(\d+)$').firstMatch(lastNumberStr);
  int number = 0;
  if (match != null) {
    number = int.tryParse(match.group(1)!) ?? 0;
  } else {
    final parts = lastNumberStr.split('-');
    if (parts.isNotEmpty) {
      number = int.tryParse(parts.last) ?? 0;
    }
  }

  // Increment and return only the last 3 digits
  final newNumber = number + 1;
  return newNumber.toString().padLeft(3, '0');
}

int? itemsSoldorNotsold(
  List<Allstockv2Row> list,
  bool? isSold,
) {
  if (list.isEmpty) return 0;

  // Filter items based on the isSold flag and count them
  final count = list.where((item) => item.isSold == isSold).length;

  return count;
}

double? valueofProducts(
  bool? isSold,
  List<Allstockv2Row> allstock,
) {
  if (allstock.isEmpty) return 0;

  final totalValue = allstock
      .where((item) => item.isSold == isSold)
      .fold<double>(0.0, (sum, item) {
    final salePrice = (item.saleprice ?? 0);
    return sum + (salePrice is num ? salePrice.toDouble() : 0.0);
  });

  return totalValue;
}

int? getTotalProducts(List<Allstockv2Row>? stocks) {
  if (stocks == null) return 0;

  return stocks.length;
}

double? getTotalStockValue(List<Allstockv2Row>? allStock) {
  if (allStock == null || allStock.isEmpty) return 0.0;
  double total = 0.0;
  for (final stock in allStock) {
    final price = double.tryParse(stock.costprice ?? '0') ?? 0.0;
    total += price;
  }
  return total;
}

String? formatINR(double? amount) {
  final formatCurrency = NumberFormat.currency(
    locale: 'en_IN',
    symbol: '₹',
  );
  return formatCurrency.format(amount);
}

List<ReportProductbySaleStruct>? reportListproductbySale(
  List<AllInvoicesRow>? allinvoices,
  DateTime? startDate,
  DateTime? endDate,
) {
  if (allinvoices == null) {
    print("Error: allinvoices list is null");
    return [];
  }

  if (startDate == null || endDate == null) {
    print("Error: startDate or endDate is null");
    return [];
  }

  // Normalize start and end dates to UTC
  final utcStart = startDate.toUtc();
  final utcEnd = endDate.toUtc();

  print("Fetched ${allinvoices.length} invoices successfully.");

  final List<ReportProductbySaleStruct> reportItems = [];

  for (final invoice in allinvoices) {
    final createdDate = invoice.date;
    if (createdDate == null) {
      print("Warning: Invoice with null createdDate skipped");
      continue;
    }

    // Filter invoices by date range
    if (createdDate.isBefore(utcStart) || createdDate.isAfter(utcEnd)) continue;
    final items = invoice.invoiceitems;
    if (items == null || items.isEmpty) {
      print(
          "Warning: Invoice ${invoice.invNumber ?? ''} has empty invoiceItems");
      continue;
    }

    // Supabase jsonb returns List<dynamic>, so no jsonDecode needed
    if (items is List) {
      for (final item in items) {
        if (item is Map<String, dynamic>) {
          final product = ReportProductbySaleStruct(
            stockRef: item['stockRef'],
            invoiceItem: item['invoiceItem'],
            invoiceItemID: item['invoiceitemID'],
            invoiceItemHSN: item['invoiceItemHSN'],
            invoiceItemCost: item['invoiceItemCost'],
            invoiceTaxAmount: item['invoiceTaxAmount'],
            invoiceItemAmount: item['invoiceItemAmount'],
            invoiceItemConfig: item['invoiceItemConfig'],
            invoiceItemTaxRate: item['invoiceItemTaxRate'],
            invoiceItemQuantity: item['invoiceItemQuantity'],
            invoiceItemSerialNo: item['invoiceItemSerialNo'],
            invoiceAmountBeforeTax: item['invoiceAmountBeforeTax'],
            invoiceItembarCodeNumber: item['invoiceItembarCodeNumber'],
          );
          reportItems.add(product);
        }
      }
    } else {
      print(
          "Warning: Invoice ${invoice.invNumber ?? ''} invoiceItems is not a List");
    }
  }

  print("Processed ${reportItems.length} invoice items successfully.");
  return reportItems;
}

double? reportCalculateTotalInvoice(
  List<AllInvoicesRow> invoiceList,
  DateTime? startDate,
  DateTime? endDate,
) {
  if (invoiceList.isEmpty || startDate == null || endDate == null) {
    print("Error: Missing invoice list or date range.");
    return 0;
  }

  final utcStart = startDate.toUtc();
  final utcEnd = endDate.toUtc();

  print("Calculating total for invoices between $utcStart and $utcEnd...");

  double total = 0;

  for (final invoice in invoiceList) {
    final createdDate = invoice.date;
    final grandTotal = invoice.invoicesGrandTotal;

    if (createdDate == null) {
      print("Warning: Skipped invoice with null createdDate.");
      continue;
    }

    if (createdDate.isBefore(utcStart) || createdDate.isAfter(utcEnd)) continue;

    if (grandTotal != null) {
      total += grandTotal;
    } else {
      print(
          "Warning: Invoice ${invoice.invNumber ?? 'unknown'} has null grandTotal.");
    }
  }

  print("Fetched ${invoiceList.length} invoices successfully.");
  print("Total Invoice Grand Total: ₹${total.toStringAsFixed(2)}");

  return total;
}

double? reportNetProfit(
  List<AllInvoicesRow>? list,
  DateTime? startDate,
  DateTime? endDate,
) {
  if (list == null || startDate == null || endDate == null) {
    print("Error: invoice list or date range is null");
    return 0;
  }

  final utcStart = startDate.toUtc();
  final utcEnd = endDate.toUtc();

  print("Fetched ${list.length} invoices successfully.");
  double totalProfit = 0;

  for (final invoice in list) {
    final createdDate = invoice.date;
    if (createdDate == null) {
      print("Warning: Skipped invoice with null createdDate");
      continue;
    }

    if (createdDate.isBefore(utcStart) || createdDate.isAfter(utcEnd)) continue;

    final items = invoice.invoiceitems;

    if (items == null || items.isEmpty) {
      print("Warning: Invoice ${invoice.invNumber ?? ''} has no items");
      continue;
    }

    if (items is List) {
      for (final item in items) {
        if (item is Map<String, dynamic>) {
          final double itemAmount = (item['invoiceItemAmount'] ?? 0).toDouble();
          final double itemCost = (item['invoiceItemCost'] ?? 0).toDouble();
          final double profit = itemAmount - itemCost;

          totalProfit += profit;
        }
      }
    } else {
      print(
          "Warning: Invoice ${invoice.invNumber ?? ''} has invalid items format");
    }
  }

  print(
      "Net Profit Calculated Successfully: ₹${totalProfit.toStringAsFixed(2)}");
  return totalProfit;
}

double? reportPaymentReceived(
  List<AllInvoicesRow>? invoicesList,
  List<PaymentsRow>? paymentList,
  DateTime? startDate,
  DateTime? endDate,
) {
  if (invoicesList == null ||
      paymentList == null ||
      startDate == null ||
      endDate == null) {
    print("Error: invoices, payments, or dates are null");
    return 0;
  }

  final utcStart = startDate.toUtc();
  final utcEnd = endDate.toUtc();

  print(
      "Fetched ${invoicesList.length} invoices and ${paymentList.length} payments successfully.");

  // Collect valid invoice references based on the invoice date range
  final validInvoiceIds = <dynamic>{};
  for (final invoice in invoicesList) {
    final createdDate = invoice.date;
    if (createdDate == null) continue;

    if (!createdDate.isBefore(utcStart) && !createdDate.isAfter(utcEnd)) {
      validInvoiceIds.add(invoice.invoiceId ?? invoice.invNumber);
    }
  }

  double totalPayments = 0;
  int matchedPayments = 0;

  // Include ALL payments, but only match if their invoice reference belongs to the valid invoice list
  for (final payment in paymentList) {
    final linkedInvoiceId = payment.invoiceReference;
    if (linkedInvoiceId != null && validInvoiceIds.contains(linkedInvoiceId)) {
      final amount = (payment.paymentAmount ?? 0).toDouble();
      totalPayments += amount;
      matchedPayments++;
    }
  }

  print("Matched $matchedPayments payments linked to invoices in range.");
  print("Total Payment Received: ₹${totalPayments.toStringAsFixed(2)}");

  return totalPayments;
}
