import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Training"),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios),
              Icon(Icons.date_range),
              SizedBox(
                width: 4,
              ),
              Text("29 April"),
              SizedBox(
                width: 4,
              ),
              Icon(Icons.arrow_forward_ios),
              SizedBox(
                width: 4,
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Your Progress",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text("Details",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 4,
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Workout",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lag Training \nand Glutes Workout",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w100),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          " 46 min",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w100),
                        ),
                        Spacer(),
                        Icon(
                          Icons.play_circle,
                          color: Colors.white,
                          size: 60,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: Card(
                color: Colors.white,
                elevation: 2,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/girl.png',
                      height: 110,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: Column(
                        children: [
                          Text(
                            "You are doing great",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue.shade400,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Time : 1 min",
                            style: TextStyle(fontSize: 14),
                          ),
                          const Text("you have burnt lot of calories",
                              style: TextStyle(fontSize: 14))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "  Area of Focus",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 2,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                              ),
                              child: Image.asset(
                                'assets/images/arm.png',
                                height: 100,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Arm",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
