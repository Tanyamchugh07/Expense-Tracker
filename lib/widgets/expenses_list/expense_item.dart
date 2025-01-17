import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('Rs ${expense.amount.toStringAsFixed(2)}'),
                //12.3433 => 12.34
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.date.toString()),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
