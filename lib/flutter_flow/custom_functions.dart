import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double quantityPrice(
  double price,
  int quantity,
) {
  // multiply price with quantity
  return price * quantity;
}

double finalmrp(List<double> mrp) {
  // add the list of item
// calculate the sum of all prices in the list
  double sum = 0;
  for (double p in mrp) {
    sum += p;
  }

  // return the final price
  return sum;
}

double finalprice(List<double> price) {
  // add the list of item
// calculate the sum of all prices in the list
  double sum = 0;
  for (double p in price) {
    sum += p;
  }

  // return the final price
  return sum;
}

double negativePrice(
  double price,
  int quantity,
) {
  // multiply price with quantity
  return -(price * quantity);
}

double taxes(double price) {
  // multiply the price with 12% of the price
// multiply the price with 12% of the price
  return price * 0.06;
}

double totalAmount(
  double finalprice,
  double taxes,
) {
  // add finalprice and taxes
// add the final price and taxes
  return finalprice + taxes;
}

double discount(
  double mrp,
  double price,
) {
  // subtract mrp with price
// subtract mrp with price
  return price - mrp;
}

double delivery(double quantity) {
  // multiply 40 with quantity
// multiply 40 with quantity
  return -(40 * quantity);
}

int allquantity(List<int> quantity) {
  // add the quantity until it becomes zero
  int sum = 0;
  for (int p in quantity) {
    sum += p;
  }

  // return the final price
  return sum;
}

double savings(
  double discount,
  double taxes,
  double delivery,
) {
  // add discount with delivery and subtract with taxes
  double totalSavings = -discount - delivery - taxes;
  return (totalSavings);
}

double cartValue(
  List<double> prices,
  List<int> quantity,
) {
  double total = 0;
  for (int i = 0; i < prices.length; i++) {
    total += prices[i] * quantity[i];
  }
  return total;
}
