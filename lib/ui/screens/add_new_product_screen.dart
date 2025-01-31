import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  static const String name = '/add-new-product';
  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalpriceTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildProductForm(),
        ),
      ),
    );
  }

  Widget _buildProductForm() {
    return Form(
        child: Column(
          children: [
            TextFormField(
              controller: _nameTEController,
              decoration: InputDecoration(
                hintText: 'Name',
                labelText: 'Product name',
              ),
              validator: (String? value) {
                if(value?.trim().isEmpty ?? true) {
                  return 'Enter product name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _priceTEController,
              decoration: InputDecoration(
                hintText: 'Price',
                labelText: 'Product price',
              ),
              validator: (String? value) {
                if(value?.trim().isEmpty ?? true) {
                  return 'Enter product name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _totalpriceTEController,
              decoration: InputDecoration(
                hintText: 'Total price',
                labelText: 'Product total price',
              ),
              validator: (String? value) {
                if(value?.trim().isEmpty ?? true) {
                  return 'Enter product name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _quantityTEController,
              decoration: InputDecoration(
                hintText: 'Quantity',
                labelText: 'Product Quantity',
              ),
              validator: (String? value) {
                if(value?.trim().isEmpty ?? true) {
                  return 'Enter product name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _codeTEController,
              decoration: InputDecoration(
                hintText: 'Code',
                labelText: 'Product Code',
              ),
              validator: (String? value) {
                if(value?.trim().isEmpty ?? true) {
                  return 'Enter product name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _imageTEController,
              decoration: InputDecoration(
                hintText: 'Image URL',
                labelText: 'Product Image',
              ),
              validator: (String? value) {
                if(value?.trim().isEmpty ?? true) {
                  return 'Enter product name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: () {}, child: Text('Add Product'))
          ],
        ),
      );
  }

  @override
  void dispose() {
   _nameTEController.dispose();
   _priceTEController.dispose();
   _totalpriceTEController.dispose();
   _quantityTEController.dispose();
   _codeTEController.dispose();
   _imageTEController.dispose();
    super.dispose();
  }
}