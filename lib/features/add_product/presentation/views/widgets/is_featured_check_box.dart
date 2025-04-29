import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/core/utils/app_text_styles.dart';

import 'custom_check_box.dart';

class IsFeaturedCheckBox extends StatefulWidget {
  const IsFeaturedCheckBox({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;
  @override
  State<IsFeaturedCheckBox> createState() => _IsFeaturedCheckBoxState();
}

class _IsFeaturedCheckBoxState extends State<IsFeaturedCheckBox> {
  bool isFeatured = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Is Featured Item?',
                style: TextStyles.semiBold13.copyWith(
                  color: const Color(0xFF949D9E),
                ),
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        const Expanded(child: SizedBox(width: 16)),
        CustomCheckBox(
          onChecked: (value) {
            isFeatured = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isFeatured,
        ),
      ],
    );
  }
}
