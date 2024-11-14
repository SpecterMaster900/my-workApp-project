class GrandTotalCalculator {
  String regHours;
  String oTHours;

  GrandTotalCalculator({required this.regHours, required this.oTHours});

  String getGrandTotal(){

    double regHoursNum = double.parse(regHours);
    double oTHoursNum = double.parse(oTHours);

    double grandTotal = regHoursNum + oTHoursNum;

    return grandTotal.toString();
  }
}
