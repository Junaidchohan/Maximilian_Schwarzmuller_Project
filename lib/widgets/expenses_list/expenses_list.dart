import 'package:expenses__app/model/expense.dart';
import 'package:expenses__app/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
      
        key: ValueKey(expenses[index]),
        child: ExpensesItem(
          expenses[index],
        ),
       onDismissed:(direction){
        onRemoveExpense(expenses[index],);    
        } ,
      ),
    );
  }
}
