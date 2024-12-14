import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons '),
      ),
      body: Column(children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.yellowAccent,
              foregroundColor: Colors.blue
            ),
            onPressed: (){

          print('ElevatedButton');
        }, child: Text('ElevatedButton')) ,
        TextButton(onPressed: (){
          print('TextButton');
        }, child: Text('TextButton')) ,
        OutlinedButton(onPressed: (){
          print('OutlinedButton');
          
        }, child: Text('OutlinedButton'))  ,
        
        IconButton(onPressed: (){
          print('IconButton') ;
        }, icon: Icon(Icons.person, size: 40,color: Colors.blue,)),
        ElevatedButton.icon(onPressed: () {  }, icon: Icon(Icons.add ,size: 
        40,color: Colors.blue,), label: Text('Add'),)


      ],
      
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print('floatingActionButton');
      },child: Icon(Icons.add_alarm,size: 50,color: Colors.blue,),),
    );
  }
}
