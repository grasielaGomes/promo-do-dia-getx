import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ExpandedContainer extends StatefulWidget {

  final String label;
  final Color detailColor;
  final Widget child;

  const ExpandedContainer({required this.label, required this.detailColor, required this.child});

  @override
  _ExpandedContainerState createState() => _ExpandedContainerState();
}

class _ExpandedContainerState extends State<ExpandedContainer> {
  bool isExpanded = false;
  bool isFinished = false;
  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    final double height = _responsive.heightPercent(1);
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
            },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: height * 2),
            height: height * 7,
            decoration: BoxDecoration(
                color: kLightPrimaryColor,
                borderRadius: BorderRadius.only(
                  topRight:
                  Radius.circular(height),
                  topLeft: Radius.circular(height),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InstructionText(text: widget.label),
                Icon(isExpanded
                    ? Icons.keyboard_arrow_up_rounded
                    : Icons.keyboard_arrow_down_rounded,
                  color: kLightGrey,)],
            ),
          ),
        ),
        AnimatedContainer(
            curve: Curves.fastOutSlowIn,
            onEnd: () {
              setState(() {
                isFinished = !isFinished;
              });
            },
            height: isExpanded ? height * 30 : 0,
            padding: EdgeInsets.all(height * 2),
            color: kLightPrimaryColor,
            duration: const Duration(milliseconds: 300),
            child: AnimatedOpacity(
              curve: Curves.easeInOut,
              duration: isFinished && isExpanded
                  ? const Duration(milliseconds: 300)
                  : const Duration(milliseconds: 100),
              opacity: isFinished && isExpanded ? 1 : 0,
              child: widget.child,
            )),
        Container(
          decoration: BoxDecoration(
              color: widget.detailColor,
              borderRadius: BorderRadius.only(
                bottomLeft:
                Radius.circular(height * .6),
                bottomRight:
                Radius.circular(height * .6),
              )),
          height: height,
          margin: EdgeInsets.only(bottom: height * 2),
        )
      ],
    );
  }
}
