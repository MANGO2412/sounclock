import 'package:flutter/material.dart';


void main() {
  runApp(const NavigationBarApp());
}

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context){
     return const MaterialApp(
      home: BottomNavigationBarApp(),
     );
  }
}

class BottomNavigationBarApp extends StatefulWidget{
  const BottomNavigationBarApp({super.key});

  @override 
  State<BottomNavigationBarApp> createState()=>_BottomNavigationBarAppState();
}


class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
     int _selectedIndex=0;
     
     static const TextStyle optionStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white);
     
     static const List<Widget> _widgetOptions=<Widget>[
       Text('Index o: Home',style: optionStyle,),
       Text('Index 1: Business',style: optionStyle,),
       Text('Index 2: School',style: optionStyle,),
       Text('Index 3: timer',style: optionStyle,)  
     ];

     void _onItemTapped(int index){
       setState((){
         _selectedIndex=index;
       });
     }

     @override 
     Widget build(BuildContext context){
        return Scaffold(
          backgroundColor:const Color(0xff222831),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                           icon: Icon(Icons.alarm),
                           label: 'Alarm',
                           backgroundColor: Color(0xff222831)
                         ),
                         BottomNavigationBarItem(
                           icon: Icon(Icons.language),
                           label: 'World Clock',
                           backgroundColor:  Color(0xff222831)
                          
                         ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.timer),
                          label: 'StopWatch',
                          backgroundColor:  Color(0xff222831)
                        ),
                          BottomNavigationBarItem(
                          icon: Icon(Icons.hourglass_full_outlined),
                          label: 'Timer',
                          backgroundColor: Color(0xff222831)
                        ),
                     ],
            currentIndex: _selectedIndex,
            unselectedItemColor:const  Color(0xffeeeeee),
            selectedItemColor:const  Color(0xff76abae),
            onTap: _onItemTapped,  
          ),
        );
     }
}


