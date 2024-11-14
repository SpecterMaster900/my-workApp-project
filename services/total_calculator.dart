class TotalCalculator{

  List<dynamic>data = [];

  TotalCalculator({required this.data});


  String getTotalReg(){
   List<double> dataAsNum = [];
   double sumOfNumber = 0;
   for(int i = 0; i < data.length; i++){
    for(int j = 0; j < data.length; j++){
      if(j == 2){
        dataAsNum[i] = double.parse(data[i][j]);
      }
    }
   }
   for(int i = 0; i < dataAsNum.length; i++){
     sumOfNumber += dataAsNum[i];
   }

   return sumOfNumber.toString();
  }


  String getTotalOt(){
    List<double> dataAsNum = [];
    double sumOfNumber = 0;
    for(int i = 0; i < data.length; i++){
      for(int j = 0; j < data.length; j++){
        if(j == 2){
          dataAsNum[i] = double.parse(data[i][j]);
        }
      }
    }
    for(int i = 0; i < dataAsNum.length; i++){
      sumOfNumber += dataAsNum[i];
    }

    return sumOfNumber.toString();
  }
}
  
