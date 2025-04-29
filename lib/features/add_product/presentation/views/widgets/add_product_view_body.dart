import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/core/widgets/custom_text_form_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            spacing: 16.0,
            children: [
              CustomTextFormField(
                hintText: 'Product Name',
                keyboardType: TextInputType.text,
              ),
              CustomTextFormField(
                hintText: 'Product Price',
                keyboardType: TextInputType.number,
              ),
              CustomTextFormField(
                hintText: 'Product Code',
                keyboardType: TextInputType.number,
              ),
              CustomTextFormField(
                hintText: 'Product Description',
                keyboardType: TextInputType.text,
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
