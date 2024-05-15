import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/const/theme/app_colors.dart';

class Category {
  final String name;
  final IconData icon;

  Category(this.name, this.icon);
}

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key});

  @override
  _ExpenseFormState createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final List<Category> categories = [
    Category('Food', Icons.fastfood),
    Category('Movie', Icons.movie),
    Category('Travel', Icons.directions_car),
    Category('Shopping', Icons.shopping_cart),
    Category('Fuel', Icons.local_gas_station),
    Category('Mobile', Icons.phone_android),
    Category('grocery', Icons.local_grocery_store),
  ];

  Category? selectedCategory;
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    dateController.text =
        DateFormat('dd.MM.yyyy').format(DateTime.now().toLocal());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Enter Expenses',
            hintStyle: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              color: AppColors.kBlack,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            labelText: 'Expense',
            labelStyle: TextStyle(
              color: AppColors.kBlack,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            prefixIcon: const Icon(
              IconData(0x20B9,
                  fontFamily:
                      'MaterialIcons'), // Unicode for Indian rupee symbol
              color: AppColors.kBlack,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ).p(20),
        const Divider(
          thickness: 1,
        ).p(10),
        20.heightBox,
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'Enter Description',
            hintStyle: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              color: AppColors.kBlack,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            labelText: 'Description',
            labelStyle: TextStyle(
              color: AppColors.kBlack,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ).p(10),
        10.heightBox,
        TextField(
          readOnly: true,
          controller: TextEditingController(text: dateController.text),
          decoration: InputDecoration(
            hintText: 'Select Date',
            hintStyle: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              color: AppColors.kBlack.withOpacity(0.5),
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            labelText: 'Date',
            labelStyle: TextStyle(
              color: AppColors.kBlack.withOpacity(0.5),
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ).p(10),
        10.heightBox,
        DropdownButtonFormField<Category>(
          hint: const Text('Select a category'),
          value: selectedCategory,
          onChanged: (Category? newValue) {
            setState(() {
              selectedCategory = newValue;
            });
          },
          items: categories.map((Category category) {
            return DropdownMenuItem<Category>(
              value: category,
              child: Row(
                children: <Widget>[
                  Icon(category.icon),
                  const SizedBox(width: 10),
                  Text(category.name),
                ],
              ),
            );
          }).toList(),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ).p(10),
      ],
    );
  }
}
