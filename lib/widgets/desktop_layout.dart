import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_widgets.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  AllExpensesWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: QuickInvoiceWidget(),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
