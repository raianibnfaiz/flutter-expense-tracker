import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}
  class _NewExpenseState extends State<NewExpense>{
    @override
    Widget build(BuildContext context){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Expense Name"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Expense Amount"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Expense Date"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Expense Category"),
            ),
            ElevatedButton(onPressed: (){}, child: Text("Add Expense"))
          ],
        ),
      );
    }
  }