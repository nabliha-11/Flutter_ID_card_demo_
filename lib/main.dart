import 'package:flutter/material.dart';
//stateful-dynamic(value change hoy)UI render korte hoile.
// Stateless e terminal e change hobe. But screen rendered hobe na. Reload korar por value show korbe.

void main() {
  runApp(const MyApp());
}
//in flutter everything is widget- view,logic,function...
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //starts with MaterialApp widget.customizabe.wont be covered here.
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("ID Card"),
      ),
      body: SizedBox(
        child: Container(
          clipBehavior: Clip.none,
          child: Stack(
            clipBehavior: Clip.none,
            children:<Widget> [
              Column(
                children:<Widget> [
                  Stack(
                    clipBehavior: Clip.none,
                    children:<Widget> [
                      Container(
                        clipBehavior: Clip.none,
                        height: 250,
                        color: Colors.green[900],
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'image/iut.png',
                                height: 75,
                                width: 75,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'ISLAMIC UNIVERSITY OF TECHNOLOGY',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -60,
                        left: MediaQuery.of(context).size.width / 2 - 60,
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.green[900]!,
                                width: 10,
                              ),
                            ),
                            child: Image.asset(
                              'image/fmale.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    clipBehavior: Clip.none,
                    height: 380,
                    color: Colors.white,
                    child: Column(
                      children: [

                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 40.0),

                            child: SizedBox(
                              width: MediaQuery.of(context).size.width/1.85,
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 16.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.key,
                                          size: 20,
                                        ),
                                        SizedBox(
                                            width: 10,


                                        ),
                                        Text(
                                          'Student ID:',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 16.0,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius:BorderRadius.circular(15),
                                      color: Colors.green,
                                      border: Border.all(
                                        color: Colors.green,
                                        width: 2,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 20,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          '190041111',
                                          style: TextStyle(
                                              fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 16.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.person_2_rounded,
                                          size: 20,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Student Name',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 16.0,
                              ),
                                child: Row(
                                children: [
                                  //Icon(
                                    //Icons.format_list_numbered,
                                    //size: 20,
                                  //),
                                  SizedBox(width: 5),
                                  Text(
                                    'Nabliha Khandker',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                    ),

                                  ),
                                ],
                              ),
                            ),
                               Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 16.0,
                              ),
                                 child: Row(
                                   children: [
                                  Icon(
                                    Icons.school,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Program',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                     Text(
                                       ' BSc in CSE',
                                       style: TextStyle(
                                           fontSize: 16,
                                           fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                ],
                              ),
                            ),
                               Container(
                               padding: EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 16.0,
                              ),
                               child: Row(
                                children: [
                                  Icon(
                                    Icons.people_outline_rounded,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Department ',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    'CSE',
                                    style: TextStyle(
                                        fontSize: 16,
                                       fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                               Container(
                                padding: EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 16.0,
                              ),
                                 child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Bangladesh',
                                    style: TextStyle(
                                        fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ],
                    ),
    ),
    ),
    ),
                  ],
                    ),
                  ),
                     Spacer(),
                     Container(
                      height: 30,
                      color: Colors.green,
                        child: Center(
                          child: Text(
                        'A subsidiary organ of OIC',
                        style:TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        )

                      )
                    ),



                  ),
              ],
              ),
            ],
          ),
        ),

        ),


    );
  }
}
