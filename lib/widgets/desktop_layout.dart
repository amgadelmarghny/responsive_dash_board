import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card_anf_transaction_history_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        //first section (Drawer section)
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 20,
        ),
        // second and third Sections
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    // second Sections
                    Expanded(
                      flex: 2,
                      child: AllExpensessAndQuickInvoiceSection(),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // third Sections
                    Expanded(
                      child: MyCardAndTransactionHistorySection(),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
