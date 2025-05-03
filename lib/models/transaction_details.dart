class TransactionDetails {
  final String title;
  final String date;
  final String amount;
  final TransactionType status;

  const TransactionDetails({
    required this.title,
    required this.date,
    required this.amount,
    required this.status,
  });
}

enum TransactionType {
  withdrawal,
  deposit,
}
