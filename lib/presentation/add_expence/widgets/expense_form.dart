import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:your_tracks/const/theme/app_colors.dart';

class CategoryList {
  final String name;
  final IconData icon;

  CategoryList(this.name, this.icon);
}

class ExpenseForm extends StatefulWidget {
  final TextEditingController dateController;
  final TextEditingController nameController;
  final TextEditingController expenseController;
  const ExpenseForm(
      {super.key,
      required this.dateController,
      required this.nameController,
      required this.expenseController});

  @override
  _ExpenseFormState createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final List<CategoryList> categories = [
    CategoryList('Food', Icons.fastfood),
    CategoryList('Movie', Icons.movie),
    CategoryList('Travel', Icons.directions_car),
    CategoryList('Shopping', Icons.shopping_cart),
    CategoryList('Fuel', Icons.local_gas_station),
    CategoryList('Mobile', Icons.phone_android),
    CategoryList('grocery', Icons.local_grocery_store),
  ];

  CategoryList? selectedCategory;
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
          controller: widget.expenseController,
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
          controller: widget.nameController,
          decoration: InputDecoration(
            hintText: 'Enter Name',
            hintStyle: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              color: AppColors.kBlack,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            labelText: 'Name',
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
        DropdownButtonFormField<CategoryList>(
          hint: const Text('Select a category'),
          value: selectedCategory,
          onChanged: (CategoryList? newValue) {
            setState(() {
              selectedCategory = newValue;
            });
          },
          items: categories.map((CategoryList category) {
            return DropdownMenuItem<CategoryList>(
              value: category,
              child: Row(
                children: [
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
