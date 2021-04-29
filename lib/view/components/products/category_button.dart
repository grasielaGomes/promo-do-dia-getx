import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;


  const CategoryButton({
    required this.label,
    required this.isSelected,
    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive();
    final double height = responsive.heightPercent(8);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: responsive.inchPercent(3)),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: isSelected ? kPrimaryColor : Colors.white,
                        width: 5))
              ),
              child: Text(label,
                  style: TextStyle(
                    color: isSelected ? kPrimaryColor : kGrey,
                    fontSize: isSelected ? responsive.inchPercent(2) : responsive.inchPercent(1.8),
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
