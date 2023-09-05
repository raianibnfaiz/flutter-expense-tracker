import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final dateformatter = DateFormat.yMd() ;
const uuid = Uuid();
enum Category { food, clothing, bills, entertainment, work }
const categoryIcons = {
  Category.food: Icons.fastfood,
  Category.clothing: Icons.shopping_bag,
  Category.bills: Icons.receipt,
  Category.entertainment: Icons.movie,
  Category.work: Icons.work,
};


class Expense {
   Expense({required this.name,required this.amount,required this.date, required this.category}): id = uuid.v4();

  final String id;
  final String name;
  final double amount;
  final DateTime date;
  final Category category;
  String get dateFormatted => dateformatter.format(date);
}