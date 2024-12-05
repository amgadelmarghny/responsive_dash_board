class TransactionHistoryItemModel {
  final String title, date, income;
  final TransactionType transactionType;

  const TransactionHistoryItemModel(
      {required this.title,
      required this.date,
      required this.income,
      required this.transactionType});
}

enum TransactionType { income, withDrawal }
