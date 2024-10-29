import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final dateFormatter = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const CategoryIcons = {
  Category.work: Icons.work,
  Category.food: Icons.launch,
  Category.leisure: Icons.movie,
  Category.travel: Icons.flight_takeoff,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.category,
    required this.createdAt,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final Category category;
  final DateTime createdAt;

  String get formattedDate {
    return dateFormatter.format(createdAt);
  }
}
