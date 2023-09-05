import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: "Expense Name"),
            maxLength: 50,
          ),
          Row(children: [
            Expanded(
              child: TextField(
                controller: _amountController,
                decoration:
                    InputDecoration(labelText: "Amount", prefixText: "\$"),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
              Text("Selected Date"),
              IconButton(onPressed: () {}, icon: Icon(Icons.calendar_today)),
            ]))
          ]),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Cancel"),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(_titleController.text);
                    print(_amountController.text);
                  },
                  child: Text("Add Expense"))
            ],
          )
        ],
      ),
    );
  }
}
