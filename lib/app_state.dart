import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _businessRefID = prefs.getInt('ff_businessRefID') ?? _businessRefID;
    });
    _safeInit(() {
      _nameOfUser = prefs.getString('ff_nameOfUser') ?? _nameOfUser;
    });
    _safeInit(() {
      _businessName = prefs.getString('ff_businessName') ?? _businessName;
    });
    _safeInit(() {
      _businessAddress =
          prefs.getString('ff_businessAddress') ?? _businessAddress;
    });
    _safeInit(() {
      _businessMobile = prefs.getString('ff_businessMobile') ?? _businessMobile;
    });
    _safeInit(() {
      _businessGST = prefs.getString('ff_businessGST') ?? _businessGST;
    });
    _safeInit(() {
      _businessStateCode =
          prefs.getString('ff_businessStateCode') ?? _businessStateCode;
    });
    _safeInit(() {
      _businessEmail = prefs.getString('ff_businessEmail') ?? _businessEmail;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_businessBank')) {
        try {
          _businessBank = jsonDecode(prefs.getString('ff_businessBank') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_condition')) {
        try {
          _condition = jsonDecode(prefs.getString('ff_condition') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _apikey = prefs.getString('ff_apikey') ?? _apikey;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<InvoiceStruct> _invoiceItems = [];
  List<InvoiceStruct> get invoiceItems => _invoiceItems;
  set invoiceItems(List<InvoiceStruct> value) {
    _invoiceItems = value;
  }

  void addToInvoiceItems(InvoiceStruct value) {
    invoiceItems.add(value);
  }

  void removeFromInvoiceItems(InvoiceStruct value) {
    invoiceItems.remove(value);
  }

  void removeAtIndexFromInvoiceItems(int index) {
    invoiceItems.removeAt(index);
  }

  void updateInvoiceItemsAtIndex(
    int index,
    InvoiceStruct Function(InvoiceStruct) updateFn,
  ) {
    invoiceItems[index] = updateFn(_invoiceItems[index]);
  }

  void insertAtIndexInInvoiceItems(int index, InvoiceStruct value) {
    invoiceItems.insert(index, value);
  }

  int _businessRefID = 0;
  int get businessRefID => _businessRefID;
  set businessRefID(int value) {
    _businessRefID = value;
    prefs.setInt('ff_businessRefID', value);
  }

  String _nameOfUser = '';
  String get nameOfUser => _nameOfUser;
  set nameOfUser(String value) {
    _nameOfUser = value;
    prefs.setString('ff_nameOfUser', value);
  }

  String _businessName = '';
  String get businessName => _businessName;
  set businessName(String value) {
    _businessName = value;
    prefs.setString('ff_businessName', value);
  }

  String _businessAddress = '';
  String get businessAddress => _businessAddress;
  set businessAddress(String value) {
    _businessAddress = value;
    prefs.setString('ff_businessAddress', value);
  }

  List<VendorPaymentStruct> _vendorPayment = [];
  List<VendorPaymentStruct> get vendorPayment => _vendorPayment;
  set vendorPayment(List<VendorPaymentStruct> value) {
    _vendorPayment = value;
  }

  void addToVendorPayment(VendorPaymentStruct value) {
    vendorPayment.add(value);
  }

  void removeFromVendorPayment(VendorPaymentStruct value) {
    vendorPayment.remove(value);
  }

  void removeAtIndexFromVendorPayment(int index) {
    vendorPayment.removeAt(index);
  }

  void updateVendorPaymentAtIndex(
    int index,
    VendorPaymentStruct Function(VendorPaymentStruct) updateFn,
  ) {
    vendorPayment[index] = updateFn(_vendorPayment[index]);
  }

  void insertAtIndexInVendorPayment(int index, VendorPaymentStruct value) {
    vendorPayment.insert(index, value);
  }

  List<AddProductserialStruct> _addSerialNo = [];
  List<AddProductserialStruct> get addSerialNo => _addSerialNo;
  set addSerialNo(List<AddProductserialStruct> value) {
    _addSerialNo = value;
  }

  void addToAddSerialNo(AddProductserialStruct value) {
    addSerialNo.add(value);
  }

  void removeFromAddSerialNo(AddProductserialStruct value) {
    addSerialNo.remove(value);
  }

  void removeAtIndexFromAddSerialNo(int index) {
    addSerialNo.removeAt(index);
  }

  void updateAddSerialNoAtIndex(
    int index,
    AddProductserialStruct Function(AddProductserialStruct) updateFn,
  ) {
    addSerialNo[index] = updateFn(_addSerialNo[index]);
  }

  void insertAtIndexInAddSerialNo(int index, AddProductserialStruct value) {
    addSerialNo.insert(index, value);
  }

  List<AddStockStruct> _AddStock = [];
  List<AddStockStruct> get AddStock => _AddStock;
  set AddStock(List<AddStockStruct> value) {
    _AddStock = value;
  }

  void addToAddStock(AddStockStruct value) {
    AddStock.add(value);
  }

  void removeFromAddStock(AddStockStruct value) {
    AddStock.remove(value);
  }

  void removeAtIndexFromAddStock(int index) {
    AddStock.removeAt(index);
  }

  void updateAddStockAtIndex(
    int index,
    AddStockStruct Function(AddStockStruct) updateFn,
  ) {
    AddStock[index] = updateFn(_AddStock[index]);
  }

  void insertAtIndexInAddStock(int index, AddStockStruct value) {
    AddStock.insert(index, value);
  }

  String _businessMobile = '';
  String get businessMobile => _businessMobile;
  set businessMobile(String value) {
    _businessMobile = value;
    prefs.setString('ff_businessMobile', value);
  }

  String _businessGST = '';
  String get businessGST => _businessGST;
  set businessGST(String value) {
    _businessGST = value;
    prefs.setString('ff_businessGST', value);
  }

  String _businessState = '';
  String get businessState => _businessState;
  set businessState(String value) {
    _businessState = value;
  }

  String _businessStateCode = '';
  String get businessStateCode => _businessStateCode;
  set businessStateCode(String value) {
    _businessStateCode = value;
    prefs.setString('ff_businessStateCode', value);
  }

  String _businessEmail = '';
  String get businessEmail => _businessEmail;
  set businessEmail(String value) {
    _businessEmail = value;
    prefs.setString('ff_businessEmail', value);
  }

  dynamic _businessBank;
  dynamic get businessBank => _businessBank;
  set businessBank(dynamic value) {
    _businessBank = value;
    prefs.setString('ff_businessBank', jsonEncode(value));
  }

  dynamic _condition;
  dynamic get condition => _condition;
  set condition(dynamic value) {
    _condition = value;
    prefs.setString('ff_condition', jsonEncode(value));
  }

  String _apikey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdkeGVwemx4emx6anJreHFwcXdvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE4ODU0NjMsImV4cCI6MjA2NzQ2MTQ2M30.--UZamnWbyCmxZ6GC-An8aw_mwzZ-SMpNTANSf-kWWM';
  String get apikey => _apikey;
  set apikey(String value) {
    _apikey = value;
    prefs.setString('ff_apikey', value);
  }

  List<ReportProductbySaleStruct> _reportbyProductSale = [];
  List<ReportProductbySaleStruct> get reportbyProductSale =>
      _reportbyProductSale;
  set reportbyProductSale(List<ReportProductbySaleStruct> value) {
    _reportbyProductSale = value;
  }

  void addToReportbyProductSale(ReportProductbySaleStruct value) {
    reportbyProductSale.add(value);
  }

  void removeFromReportbyProductSale(ReportProductbySaleStruct value) {
    reportbyProductSale.remove(value);
  }

  void removeAtIndexFromReportbyProductSale(int index) {
    reportbyProductSale.removeAt(index);
  }

  void updateReportbyProductSaleAtIndex(
    int index,
    ReportProductbySaleStruct Function(ReportProductbySaleStruct) updateFn,
  ) {
    reportbyProductSale[index] = updateFn(_reportbyProductSale[index]);
  }

  void insertAtIndexInReportbyProductSale(
      int index, ReportProductbySaleStruct value) {
    reportbyProductSale.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
