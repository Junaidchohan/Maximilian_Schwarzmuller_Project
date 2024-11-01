import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

final uuid = Uuid();

enum Category { food, traval, leisure, work }

const categoryIcon = {
  Category.food: Icons.lunch_dining,
  Category.traval: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense(
      {required this.amount,
      required this.date,
      required this.title,
      required this.category})
      : id = uuid.v4(); // Fix: Call uuid.v4() to generate the UUID.

  final String id;
  final String title;
  final DateTime date;
  final double amount;
  final Category category;


  String get formatedDate{
    return formatter.format(date);
  }
}
