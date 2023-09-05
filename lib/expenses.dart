import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

import 'models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        name: 'Food',
        amount: 100,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: 'Clothing',
        amount: 300,
        date: DateTime.now(),
        category: Category.clothing)
  ];
  void _openAddExpensesOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Container(
          child: NewExpense(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Expense tracker"),
          backgroundColor: Colors.white10,
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: _openAddExpensesOverlay,
            )
          ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("The Cart"),
          ),
          Expanded(
              child:
                  ExpensesList(expenses: _registeredExpenses)), // ADD THIS LIN
        ],
      ),
    );
  }
}
