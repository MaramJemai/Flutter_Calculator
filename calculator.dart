import 'package:flutter/material.dart';
class MyCal extends StatefulWidget {
  const MyCal({super.key});
  @override
  MyCalcul createState() {
    return MyCalcul();
  }
}
class MyCalcul extends State<MyCal> {
double _x = 0;
double _r = 0;
double _n = 10;
bool _d = false;
String _op = "";

  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
              mainAxisAlignment : MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text("$_x")
          ,
          Row(
                          mainAxisAlignment : MainAxisAlignment.center,

            children: [
               ElevatedButton(onPressed: ()=>{
             setState(() {
          _x=0;
          _n=10;
          _d=false;
          _r=0;
          _op="";
               })
          }, child: Text("C"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
        primary: Colors.grey

  ),
          
      ),
           ElevatedButton(onPressed: ()=>{
             setState(() {
              if(_d==false)
              {
                _x=(_x /10).truncate()*1.0;
              }
              else{
                _x=((_x*(_n/100)).truncate())/(_n/100);
                _n=_n/10;
                if(_n==10)
                {
                  _d=false;
                }
              }
               })
          }, child: Text("<-"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
        primary: Colors.grey

  ),
          ),
           ElevatedButton(onPressed: ()=>{
             setState(() {
              _op="%";
               _r=_x;
              _x=0;
              _d=false;
              _n=10;
               })
          }, child: Text("%"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
        primary: Colors.grey

  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
              _op="+";
              _r=_x;
              _x=0;
              _d=false;
              _n=10;

               })
          }, child: Text("+"), 
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.yellow
  ),
          ),
            ],
          )
          ,
          Row(
                          mainAxisAlignment : MainAxisAlignment.center,

            children: [   
              ElevatedButton(onPressed: ()=>{
             setState(() {
              if(_d==false)
              {
                _x=_x*10+7;
              }
              else{
                _x=_x+(7/_n);
                _n=_n*10;
              }
               })
          }, child: Text("7"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {

              if(_d==false)
              {
                _x=_x*10+8;
              }
              else{
                _x=_x+(8/(_n));
                _n=_n*10;
              }               })
          }, child: Text("8"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
          if(_d==false)
              {
                _x=_x*10+9;
              }
              else{
                _x=_x+(9/(_n));
                _n=_n*10;
              }
               })
          }, child: Text("9"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
              _op="x";
              _r=_x;
              _x=0;       
              _d=false;
              _n=10;
        })
          }, child: Text("x"),
 style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.yellow
  ),),],
          ),
           Row(
                          mainAxisAlignment : MainAxisAlignment.center,

            children: [
                 ElevatedButton(onPressed: ()=>{
             setState(() {
          if(_d==false)
              {
                _x=_x*10+4;
              }
              else{
                _x=_x+(4/(_n));
                _n=_n*10;
              }
               })
          }, child: Text("4"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
          if(_d==false)
              {
                _x=_x*10+5;
              }
              else{
                _x=_x+(5/(_n));
                _n=_n*10;
              }
               })
          }, child: Text("5"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
          if(_d==false)
              {
                _x=_x*10+6;
              }
              else{
                _x=_x+(6/(_n));
                _n=_n*10;
              }
               })
          }, child: Text("6"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
              _op="-";
              _r=_x;
              _x=0;     
              _d=false;
              _n=10;
           })
          }, child: Text("-"),
 style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.yellow
  ),),
            ],
          ), Row(
                          mainAxisAlignment : MainAxisAlignment.center,

            children: [   ElevatedButton(onPressed: ()=>{
             setState(() {
         if(_d==false)
              {
                _x=_x*10+1;
              }
              else{
                _x=_x+(1/(_n));
                _n=_n*10;
              }
               })
          }, child: Text("1"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
          if(_d==false)
              {
                _x=_x*10+2;
              }
              else{
                _x=_x+(2/(_n));
                _n=_n*10;
              }
               })
          }, child: Text("2"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
          if(_d==false)
              {
                _x=_x*10+3;
              }
              else{
                _x=_x+(3/(_n));
                _n=_n*10;
              }
               })
          }, child: Text("3"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
              _op="/";
              _r=_x;
              _x=0;
              _d=false;
              _n=10;
               })
          }, child: Text("/"),
 style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
    primary: Colors.yellow
  ),),],
          ), 
          Row(
            mainAxisAlignment : MainAxisAlignment.center,
            children: [   ElevatedButton(onPressed: ()=>{
             setState(() {
              if(_d==false)
              {
                _x=_x*10;
              }
              else{
                _n=_n*10;
              }               })
          }, child: Text("0"),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(20),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
             _d=true;
               })
          }, child: Text("."),
           style:ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(20),
    primary: Colors.grey
  ),),
           ElevatedButton(onPressed: ()=>{
             setState(() {
              if(_op=="+")
              {
                  _r=_r+_x;
              }
              if(_op=="x")
              {
                  _r = _r *_x;
              }
              if(_op=="-")
              {
                  _r=_r-_x;
              }
              if(_op=="/")
              {
                  _r=_r / _x;
              }if(_op=="%")
              {
                  _r=_r % _x;
              }
              if(_op==""){
                _r=_x;
              }
              _x=_r;
              _r=0;
              _op="";
              _d=false;
              _n=10;
               })
          }, child: Text("="),
 style:ElevatedButton.styleFrom(
    shape: StadiumBorder(),
    padding: EdgeInsets.all(20),
    primary: Colors.yellow
  ),),
          ],
          ),
        ],
      ),
    )
    ;
  }
}
