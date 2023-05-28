import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductFormView extends StatefulWidget {
  Map? item;
  ProductFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, ProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QImagePicker(
                        label: "Photo",
                        validator: Validator.required,
                        value: controller.photo,
                        onChanged: (value) {
                          controller.photo = value;
                        },
                      ),
                      QTextField(
                        label: "Product Name",
                        validator: Validator.required,
                        value: controller.productName,
                        onChanged: (value) {
                          controller.productName = value;
                        },
                      ),
                      QNumberField(
                        label: "Price",
                        validator: Validator.required,
                        value: controller.price?.toString(),
                        onChanged: (value) {
                          controller.price = double.tryParse(value);
                        },
                      ),
                      QDropdownField(
                        label: "Category",
                        validator: Validator.required,
                        items: const [
                          {
                            "label": "Drink",
                            "value": "Drink",
                          },
                          {
                            "label": "Main Course",
                            "value": "Main Course",
                          },
                          {
                            "label": "Salad",
                            "value": "Salad",
                          },
                          {
                            "label": "Snack",
                            "value": "Snack",
                          }
                        ],
                        value: controller.category,
                        onChanged: (value, label) {
                          controller.category = value;
                        },
                      ),
                      QMemoField(
                        label: "Description",
                        hint: "",
                        value: controller.description,
                        validator: Validator.required,
                        onChanged: (value) {
                          controller.description = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 72,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
          ),
          onPressed: () => controller.doSave(),
          child: const Text("Save"),
        ),
      ),
    );
  }

  @override
  State<ProductFormView> createState() => ProductFormController();
}
