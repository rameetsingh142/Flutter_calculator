import 'package:flutter/material.dart';
void main() 
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'calculator',
      home: calculator(),
     theme: ThemeData(
       primaryColor: Colors.brown,
       accentColor: Colors.brown,
       brightness: Brightness.dark,
     ),

    )
  );
  
}
class calculator extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return calculatorstate();
  }
}
class calculatorstate extends State<calculator>{
      TextEditingController numcontroller=TextEditingController();
     TextEditingController num2controller=TextEditingController();
      var result='';
       var display='';
  @override
  Widget build(BuildContext context) {
TextStyle textStyle=Theme.of(context).textTheme.title;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('calculator'),

      ),
      body: Container(
        child: ListView(
          children: <Widget>[
          calimage(),
         Padding(padding: EdgeInsets.only(top: 25.0,bottom: 25.0),
           child: Row(
            children: <Widget>[
              Expanded(
                child:TextFormField(
                  controller: numcontroller,
                  style: textStyle,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'First number',
                    hintText: 'enter first number',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                  ),
                ) ,
              ),
              Container(width: 25.0,),
               Expanded(
                child:TextFormField(
                  style: textStyle,
                  controller: num2controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelStyle: textStyle,
                    labelText: 'Second number',
                    hintText: 'enter second number',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                  ),
                ) ,
              ),
              
            ],
          
          )),
          Padding(padding: EdgeInsets.all(25.0),
              child: Text(this.display),),
           Padding(padding: EdgeInsets.only(top: 25.0,bottom: 25.0),
           child: Row(
             children: <Widget>[
               Expanded(
                 child: RaisedButton(
                   color: Theme.of(context).accentColor,
                   textColor: Theme.of(context).primaryColorLight,
                   child: Text('+'),
                   onPressed: (){
                    setState(() {
                      this.result=add();
                    });                   }
                 ),
               ),
               Container(width: 25.0,),
                 Expanded(
                 child: RaisedButton(
                   color: Theme.of(context).accentColor,
                   textColor: Theme.of(context).primaryColorLight,
                   child: Text('-'),
                   onPressed: (){
                    setState(() {
                      this.result=sub();
                    });                   }
                 ),
               )
             ],
           ),),
         
           Padding(padding: EdgeInsets.only(top: 25.0,bottom: 25.0),
           child: Row(
             children: <Widget>[
               Expanded(
                 child: RaisedButton(
                   color: Theme.of(context).accentColor,
                   textColor: Theme.of(context).primaryColorLight,
                   child: Text('/'),
                   onPressed: (){
                    setState(() {
                       this.result=div();
                    });                   }
                 ),
               ),
               Container(width: 25.0,),
                 Expanded(
                 child: RaisedButton(
                   color: Theme.of(context).accentColor,
                   textColor: Theme.of(context).primaryColorLight,
                   child: Text('*'),
                   onPressed: (){
                    setState(() {
                       this.result=mul();
                    });                   }
                 ),
               )
             ],
           ),),
            Padding(padding: EdgeInsets.only(top: 25.0,bottom: 25.0),
           child: Row(
             children: <Widget>[
               Expanded(
                 child: RaisedButton(
                   color: Theme.of(context).accentColor,
                   textColor: Theme.of(context).primaryColorLight,
                   child: Text('='),
                   onPressed: (){
                    setState(() {
                      this.display=this.result;
                    });                   }
                 ),
               ),
               Container(width: 25.0,),
                 Expanded(
                 child: RaisedButton(
                    color: Theme.of(context).accentColor,
                   textColor: Theme.of(context).primaryColorLight,
                   child: Text('Reset'),
                   onPressed: (){
                    setState(() {
                        reset();
                    });                   }
                 ),
               )
             ],
           ),)

          ],
        ),
      ),
    );
  }
  String add()
{


double number1=double.parse(numcontroller.text);
    double number2=double.parse(num2controller.text);
      
    double total=number1+number2;
    String sum="$total";
    return sum;


}
  String sub()
{


double number1=double.parse(numcontroller.text);
    double number2=double.parse(num2controller.text);
      
    double total=number1-number2;
    String sub="$total";
    return sub;


}
  String div()
{


double number1=double.parse(numcontroller.text);
    double number2=double.parse(num2controller.text);
      
    double total=number1/number2;
    String div="$total";
    return div;


}
  String mul()
{


double number1=double.parse(numcontroller.text);
    double number2=double.parse(num2controller.text);
      
    double total=number1*number2;
    String mul="$total";
    return mul;


}
void reset(){
display='';
numcontroller.text='';
num2controller.text='';




}


Widget calimage(){
return Container(
  width: 200.0,
  height: 200.0,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('images/calculator.png')
    )
  ),

);
}


}
