class SetPayperiodDays{

  String selectedDay;
  String payPeriod;
  List<String>dates = [];

  SetPayperiodDays({required this.selectedDay, required this.payPeriod});

  List<String>daysList(){

    List<String>day = [];


    switch(selectedDay){

      case "Monday":
        day = [
         "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"
       ];
        return day;
      case "Tuesday":
        day = [
          "Tue", "Wed", "Thu", "Fri", "Sat", "Sun", "Mon"
        ];
        return day;
      case "Wednesday":
        day = [
          "Wed", "Thu", "Fri", "Sat", "Sun", "Mon", "Tue"
        ];
        return day;
      case "Thursday":
        day = [
          "Thu", "Fri", "Sat", "Sun", "Mon", "Tue", "Wed"
        ];
        return day;
      case "Friday":
        day = [
          "Fri", "Sat", "Sun", "Mon", "Tue", "Wed", "Thu"
        ];
        return day;
      case "Saturday":
        day = [
          "Sat","Sun", "Mon", "Tue", "Wed", "Thu", "Fri"
        ];
        return day;
      case "Sunday":
        day = [
          "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"
        ];
        return day;
    }
    return day = [ "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  }

  List<String> setPPDataArray(){

    String payStart = payPeriod.substring(0,9);

    int payStartInt = int.parse(payStart.replaceAll(RegExp(r'[^0-9]'), ''));
    String ddExtract = payStartInt.toString().substring(0,1);
    String mmExtract = payStartInt.toString().substring(2,3);
    String yyyyExtract = payStartInt.toString().substring(4,7);

    int dd = int.parse(ddExtract);
    int mm = int.parse(mmExtract);
    num yyyy = num.parse(yyyyExtract);


    for(int i = 0; i < 14; i++){
      if(mm == 02){
       num yearD4 = yyyy/4;
       num yearD100 = yyyy/100;
       num yearD400 = yyyy/400;

       bool isInteger(num value) => (value % 1)  == 0;

       if(isInteger(yearD4) == true){
          if(isInteger(yearD100) == false){
            if(dd == 29){
              dd = 01;
              mm = mm + i;
            }else{
              dd = dd + i;
            }
          }else if(isInteger(yearD100) == true){
            if(isInteger(yearD400) == true){
              if(dd == 29){
                dd = 01;
                mm = mm + i;
              }else{
                dd = dd + i;
              }
            }
          }
       }else{
         if(dd == 28){
           dd = 01;
           mm = mm + i;
         }else{
           dd = dd + 1;
         }
       }
      }else if(mm == 01 || mm == 03 || mm == 05 ||
          mm == 07 || mm == 08 || mm == 10 || mm == 12){
        if(dd == 31){
          dd = 01;
          if(mm == 12){
            mm = 01;
          }else{
            mm = mm + i;
          }
        }else{
          dd = dd + i;
        }
      }else{
        if(dd == 30){
          dd = 01;
          mm = 01;
          yyyy = yyyy + i;
        }else{
          dd = dd + i;
        }
      }
      List<String> dateFormatList =  [dd.toString(), mm.toString(), yyyy.toString()];
      String dateFormat = dateFormatList.join('/');
      dates.add(dateFormat);
    }
    return dates;
  }

 List<String> prepareWriteData(){
    //get the days and dates and assign them to an arrays
   //note there are too days array,
    List<String>days = daysList();
    List<String>days2 = daysList();
    List<String>dates = setPPDataArray();

    // add the second days array to the first one
   days.addAll(days2);

   //Create an array to merge all the data into
   List<String> data = [];

   //use a loop to combine all the data
   for(int i = 0; i < 14; i++){
     data.add('${days[i]} ${dates[i]} 0 0');
   }

 return data;
 }

}
