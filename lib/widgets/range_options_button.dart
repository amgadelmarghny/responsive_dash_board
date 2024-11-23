import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class RangeOptionsButton extends StatefulWidget {
  const RangeOptionsButton({
    super.key,
  });

  @override
  State<RangeOptionsButton> createState() => _RangeOptionsButtonState();
}

List<String> _list = ['Daily', 'Weekly', 'Monthly', 'Yearly'];

class _RangeOptionsButtonState extends State<RangeOptionsButton> {
  bool isStretchedDropDown = false;
  String title = 'Monthly';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1.5,
            color: Color(0xffF1F1F1),
          ),
        ),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            isStretchedDropDown != isStretchedDropDown;
          });
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppStyles.styleMedium16(context),
            ),
            const SizedBox(
              width: 13,
            ),
            Transform.rotate(
              angle: -1.5708,
              child: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF064061),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
