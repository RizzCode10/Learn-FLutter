import 'package:belajar_widgets/widgets/doctor_item.dart';
import 'package:belajar_widgets/widgets/specialist_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          items:  const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black54,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Colors.black54,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.black54,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: Colors.black54,
              ),
              label: '',
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hello,",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Pesulap Merah",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    
                    const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/sinichi.jpeg"),

                    ),
                  ],
                  
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 233, 200, 28),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/sergeon.png",
                        width: 92,
                        height: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "How do you feel?",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const SizedBox(
                            width: 120,
                            child: Text(
                              "Fill Out your medicial Right Now!",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 150,
                            height: 35,
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: const Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,

                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  height: 64,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(95, 179, 173, 173),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Row(
                    children: const [
                      Icon(
                        Icons.search,
                        size: 32,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 12,),
                      Text(
                        "How can We help You?",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                
                SizedBox(
                  height: 60,
                  
                  child: ListView(
                    
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SpecialistItem(
                        imagePath: "assets/images/dentis.png", 
                        imageName: "Dentist",
                        ),
                      SizedBox(
                          width: 8,
                        ),
                      SpecialistItem(
                        imagePath: "assets/images/sergeon2.png", 
                        imageName: "Sergeon",
                        ),
                      SizedBox(
                          width: 8,
                        ),
                      SpecialistItem(
                        imagePath: "assets/images/lung.png", 
                        imageName: "Theraphy",
                        ),
                      SizedBox(
                          width: 8,
                        ),
                      SpecialistItem(
                        imagePath: "assets/images/pysio.png", 
                        imageName: "Pysiologist",
                        ),
                      SizedBox(
                          width: 8,
                        ),
                    ],
                    
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Doctor List",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DoctorItem(
                        image: "assets/images/dr_syifa.jpg", 
                        name: "Syifa", 
                        specialist: "specialist Anak"
                      ),
                      DoctorItem(
                        image: "assets/images/dr_zara.jpg", 
                        name: "Zara", 
                        specialist: "specialist Psikologi"
                      ),
                      DoctorItem(
                        image: "assets/images/dr_eko.jpg", 
                        name: "Eko", 
                        specialist: "specialist Tulang"
                      ),
                      DoctorItem(
                        image: "assets/images/dr_stya.jpg", 
                        name: "Stya", 
                        specialist: "specialist Gigi"
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
            
        ),
    ),
    );
  }
}
