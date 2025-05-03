class CardModel {
  final String name;
  final String number;
  final String date;
  final int cvv;
  const  CardModel({
    required this.number,
    required this.cvv,
    required this.date,
    required this.name,
  });
}
