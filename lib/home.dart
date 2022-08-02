import 'package:flutter/material.dart';
import 'package:portfolio/project.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

     // ignore: avoid_types_as_parameter_names
     myAchiev(num) {
      return  Row(children:   [
                     Text(num, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Dancing Script")),
                    
                     
                    
                  ],
                  );


     }

     mySpec(image,tech) {
      // ignore: sized_box_for_whitespace
      return Container
                          (
                            width: 105,
                            height: 115,
                            child: Card
                            (
                              margin: const EdgeInsets.all(0),
                              color: const Color(0xff252525),
                              shape: RoundedRectangleBorder
                              (
                                borderRadius: BorderRadius.circular(7)
                              ),
                              child: Column
                              (
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  Image.asset(
                image,
                height: 35
              ),
                              
                              Text(tech,style: const TextStyle(color: Colors.white,fontFamily: "Dancing Script", fontSize: 20),),],),

                            ),
                          );
     }




  @override 
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: PopupMenuButton(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            icon: const Icon(Icons.menu),
            itemBuilder: (context) => [
                  
                  PopupMenuItem(
                    // ignore: sort_child_properties_last
                    child: TextButton(
                        child: const Text(
                          'About Me',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/about');
                        }),
                    value: 2,
                  )
                ]),
      ),

    body: SlidingSheet(
      elevation: 8,
      cornerRadius: 50,
      snapSpec: const SnapSpec(
        // Enable snapping. This is true by default.
        snap: true,
        // Set custom snapping points.
        snappings: [0.38, 0.7, 1.0],
        // Define to what the snappings relate to. In this case, 
        // the total available space that the sheet can expand to.
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      // The body widget will be displayed under the SlidingSheet
      // and a parallax effect can be applied to it.
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left:30, right:20,bottom:30, top:20),
              child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height)
                        );
                  },
                  blendMode: BlendMode.dstIn,
                child : Image.asset('images/894r.png', height: 350, fit: BoxFit.contain,),
                ),
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: const [
                    Text('Riya Sabu',
                        style: TextStyle(
                            fontFamily: "Dancing Script",
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Dancing Script",
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            
          ],
        )
      ),
      builder: (context, state) {
        // This is the content of the sheet that will get
        // scrolled, if the content is bigger than the available
        // height of the sheet.
        return Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top:30),
          height: 500,
          child: Center(
            child: Column(

                 crossAxisAlignment : CrossAxisAlignment.start,
              children: [
               
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myAchiev('3'),
                      const SizedBox(
                        width: 10,
                      ),
                 
                   ElevatedButton(
                           // ignore: sort_child_properties_last
                           child: const Text('Projects ', style: TextStyle( fontFamily: 'Dancing Script', fontSize: 20, color: Colors.black,
     fontWeight: FontWeight.bold,),),
                           
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => const MyProject()),
                             );
                           },
                           style: ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 243, 122, 122),
     // Background color
  ),
                         ),
                 
    
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                   Row(
                    children:   
                    const [
                    Text('Skill set: ' ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: "OpenSans"),
                    ),
                   ]
                    ),

                    const SizedBox(
                    height: 10,
                  ),
                  
                  Column
                  (
                    children: 
                    [
                      Row
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: 
                         [
                          
                          // mySpec('images/flutter.png', 'Flutter'),

                          mySpec('images/C.png', 'C++ '),
                       

                          mySpec('images/python.png', 'Python'),

                          mySpec('images/java.png', 'Java'),

                        ],
                      ),
                      const SizedBox(
                    height: 10,
                  ),
                  Row
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: 
                         [
                          
                          mySpec('images/flutter.png', 'Flutter'),

                          mySpec('images/html.png', 'HTML'),
                       

                          mySpec('images/colle.jpg', 'C'),


                        ],
                      ),

                  
                    ],
                  )
                  

                
                
                
              ],
            ),
          ),
        );
      },
    ),
  );
  }
}