import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _productCodeTEController =
      TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _descriptionTEController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _titleTEController,
              decoration: const InputDecoration(
                label: Text('Title'),
                hintText: 'Enter Product title',
              ),
            ),
            TextFormField(
              controller: _productCodeTEController,
              decoration: const InputDecoration(
                label: Text('Product Code'),
                hintText: 'Enter Product code',
              ),
            ),
            TextFormField(
              controller: _quantityTEController,
              decoration: const InputDecoration(
                label: Text('Quantity'),
                hintText: 'Enter Product quantity',
              ),
            ),
            TextFormField(
              controller: _priceTEController,
              decoration: const InputDecoration(
                label: Text('Price'),
                hintText: 'Enter Product price',
              ),
            ),
            TextFormField(
              controller: _totalPriceTEController,
              decoration: const InputDecoration(
                label: Text('Total Price'),
                hintText: 'Enter Product total price',
              ),
            ),
            TextFormField(
              controller: _descriptionTEController,
              decoration: const InputDecoration(
                label: Text('Description'),
                hintText: 'Enter Product description',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );

    // ignore: dead_code
    @override
    void dispose() {
      _titleTEController.dispose();
      _productCodeTEController.dispose();
      _quantityTEController.dispose();
      _priceTEController.dispose();
      _totalPriceTEController.dispose();
      _descriptionTEController.dispose();
      super.dispose();
    }
  }
}
