import 'package:flutter/material.dart';
void main(){
  var app=MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyButton()
  );
  runApp(app);
}

class MyButton extends StatefulWidget
{
  @override 
  MyButtonState createState(){
    return MyButtonState();
  }

}

//* for maintianing the state
class MyButtonState extends State<MyButton>
{
  int counter=0;
  var spanishNums=[
    { 's':'uno',
      'e':'1'
    },
    {
      's':'dos',
      'e':'2'
    },
    {
      's':'tres',
      'e':'3'
    },
    {
      's':'cuatro',
      'e':'4'
    },
    {
      's':'cinco',
      'e':'5'
    },
    {
      's':'sies',
      'e':'6'
    },
    {
      's':'seite',
      'e':'7'
    },
    {
      's':'ocho',
      'e':'8'
    },
    {
      's':'nueve',
      'e':'9'
    },
    {
      's':'dietz',
      'e':'10'
    }
  ];

  String? spanishText="Spanish Numbers";
  String? englishText='';


  void displayNum(){

    //* all the variables --> part of state...always always use setState for updating the values
    setState(() {
      spanishText=spanishNums[counter%10]['s'];
      englishText=spanishNums[counter%10]['e'];
      counter++;
    });
  }


  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(
        title:const Text("Spanish Numbers App"),
        backgroundColor: Colors.pink,
      ),
      
      body:(
        Container(
          child:Center(
            child:Column(
              children: [
                Text(spanishText!, style:const TextStyle(fontSize: 30)),
                Text(englishText!, style:const TextStyle(fontSize: 30)),
                const Padding(padding: EdgeInsets.all(5)),
                ElevatedButton(
                  onPressed: displayNum, 
                  child:const Text("Call Numbers"),
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey))
                )
              ],
              mainAxisAlignment:MainAxisAlignment.center
            )
          )
        )
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,

      floatingActionButton: FloatingActionButton(
        onPressed: displayNum,
        child:const Icon(
          Icons.add
        ),
        backgroundColor: Colors.orangeAccent,
        splashColor: Colors.pink
      ),

    );
  }

}