import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class RangeOptionsButton extends StatefulWidget {
  const RangeOptionsButton({
    super.key,
  });

  @override
  State<RangeOptionsButton> createState() => _RangeOptionsButtonState();
}

class _RangeOptionsButtonState extends State<RangeOptionsButton> {
  final List<String> _list = ['Daily', 'Weekly', 'Monthly', 'Yearly'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            _list[2],
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF064061),
            ),
          ),
        ],
      ),
    );
  }
}
