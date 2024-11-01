import 'package:expenses__app/widgets/expenses_list/expenses_list.dart';
import 'package:expenses__app/model/expense.dart';
import 'package:expenses__app/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerExpense = [
    Expense(
        amount: 19.55,
        date: DateTime.now(),
        title: "Flutter course",
        category: Category.work),
    Expense(
        amount: 19.55,
        date: DateTime.now(),
        title: "Cenima",
        category: Category.leisure),
    Expense(
        amount: 19.55,
        date: DateTime.now(),
        title: "Resturant",
        category: Category.food),
    Expense(
        amount: 19.55,
        date: DateTime.now(),
        title: "SkyWays",
        category: Category.traval),
  ];

  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx) =>
      const NewExpense(),);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expense App"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text("Expenses chart"),
          Expanded(
              child: ExpensesList(
            expenses: _registerExpense,
          ))
        ],
      ),
    );
  }
}
