import 'package:flutter/material.dart';
import 'package:flutter_calc/button_values.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
 String number1="";
  String operand="";
  String number2="";

  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Scaffold(
      body:Column(
        children: [
          //output
          Expanded(
            child: SingleChildScrollView(
              reverse: true,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(16),
                child: Text(
                "$number1$operand$number2".isEmpty?"0" : "$number1$operand$number2",
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
                ),
              ),
            ),
          ),

          //buttons
          Wrap(
            children: Btn.buttonValues
            .map(
              (value) => SizedBox(
                width: value==Btn.n0
                ?screenSize.width/2
                : (screenSize.width/4),
                height: screenSize.width/5 ,
                child: buildbutton(value),
              ),
            )
            .toList(),
          )

        ],
        ),
    );
  }


Widget buildbutton(value) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Material(
      color: getBtnColor(value),
      clipBehavior: Clip.hardEdge,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white24),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: InkWell(
          onTap: () => onBtnTap(value),
          child: Center(
            child: Text(value,
            style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            ))
            ),
        )),
    ),
  );
}

void onBtnTap(String value){

  if(value==Btn.del){
    delete();
    return;
  }

  if(value==Btn.clr){
    clearAll();
    return;
  }

  appendValue(value);
}

void clearAll(){
  setState(() {
    number1="";
    operand="";
    number2="";
  });
}

void delete(){
if(number2.isNotEmpty){
  number2=number2.substring(0, number2.length - 1);
  }else if(operand.isNotEmpty){
    operand="";
  }else if(number1.isNotEmpty){
    number1=number1.substring(0, number1.length - 1);
  }

  setState(() {
    
  });
}

void appendValue(String value){

    if(value!=Btn.dot&&int.tryParse(value)==null){

    if(operand.isNotEmpty && number2.isNotEmpty){

    }
    operand = value;
  }else if(number1.isEmpty || operand.isEmpty){
  
  if(value==Btn.dot && number1.contains(Btn.dot)) return;
  if(value==Btn.dot && number1.isEmpty || number1==Btn.dot){
    value="0.";
  }
  number1 += value;

  } else if(number2.isEmpty || operand.isNotEmpty){
  
  if(value==Btn.dot && number1.contains(Btn.dot)) return;
  if(value==Btn.dot && number2.isEmpty || number2==Btn.dot){
    value="0.";
  }
  number2 += value;
  }
  
  setState(() {});

}

Color getBtnColor(value){
  return [Btn.del,Btn.clr].contains(value)
      ?Colors.blueGrey
      :[
        Btn.per,
        Btn.multiply,
        Btn.add,
        Btn.subtract,
        Btn.divide,
        Btn.calculate
        ].contains(value)
        ?Colors.orange
        :Colors.black87;
}

}
