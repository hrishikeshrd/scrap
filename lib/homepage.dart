import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrap/about.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();

}

class _HomepageState extends State<Homepage> {

  String dropdownValue = "Select Option";
  bool isExpanded = false;
  bool isExpanded2 = false;



  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Colors.indigo, // Change color as needed
        child: Icon(Icons.person, size: 30,color: Colors.white), // Add icon
      ),


      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black), // Change menu icon color
        elevation: 0, // Remove shadow
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100, // Adjust logo width
                height: 100, // Adjust logo height
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'), // Replace with your image path
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.black87], // Gradient colors
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),//
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 250,
                color: Colors.black,
                child: Center(
                  child: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => AboutPage()),
                        );
                      },
                      child: Container(
                        height: 40,
                        child: Text(
                          "ABOUT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: Text(
                        "CONTACT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Current Part
            Container(
              height: 400,
              color: Colors.white,
              child: Center(
                child: Container(
                  child: Wrap(
                    spacing: 0.0, // Horizontal spacing between items
                    runSpacing: 0.0, // Vertical spacing between rows
                    children: [
                      Container(
                        height: 70,
                        child: Center(
                          child: Text(
                            "YOUR TRUSTED SCRAP SOURCE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              letterSpacing: 3,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 2,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/logo.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Color(0xFF1e3a8a)], // Gradient colors
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),// Greenish background
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text(
                      "WHY US",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 5,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Wrap(
                        spacing: 20.0, // Spacing between cards
                        runSpacing: 20.0, // Spacing between rows
                        alignment: WrapAlignment.center,
                        children: [
                          _buildWhyUsCard(
                            icon: Icons.monetization_on,
                            title: "Best Rates",
                            description:
                            "We negotiate the best deals, so you earn more for your scrap while we handle the complexities of cross-border trade.",
                          ),
                          _buildWhyUsCard(
                            icon: Icons.access_time,
                            title: "Bridging Markets",
                            description:
                            "We connect the USA scrap market globally, ensuring seamless transactions and maximum returns for everyone.",
                          ),
                          _buildWhyUsCard(
                            icon: Icons.verified,
                            title: "Trust & Transparency",
                            description:
                            "We simplify scrap trading by delivering to quality scrap to our customers with reliability and transparency.",
                          ),
                          _buildWhyUsCard(
                            icon: Icons.eco,
                            title: "Efficient Scrap Trade Across Borders",
                            description:
                            "Our expertise in cross-border scrap trading ensures competitive pricing, timely shipments, and eco-friendly practices.",
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20, top: 60, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("INVENTORY", style: TextStyle(color: Colors.black,
                    fontSize: 20,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,),),
                ],
              ),
            ),
            // Dropdown Section
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20, bottom: 10),
                child: Container(

                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black, Color(0xFF1e3a8a)], // Gradient colors
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ferrous Scrap",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            AnimatedSize(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,

              child: isExpanded
                  ? Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: Container(
                      width:MediaQuery.of(context).size.width ,
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Container(
                          width:MediaQuery.of(context).size.width ,
                          color: Color(0xFF000931),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Heavy Melting Steel (HMS grade 1&2)",
                              style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: Container(
                            width:MediaQuery.of(context).size.width ,
                            color: Color(0xFF000931),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Cast Iron",
                                style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: Container(
                            width:MediaQuery.of(context).size.width ,
                            color: Color(0xFF000931),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Steel Scrap",
                                style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: Container(
                            width:MediaQuery.of(context).size.width ,
                            color: Color(0xFF000931),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Rebar Scrap",
                                style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            width:MediaQuery.of(context).size.width ,
                            color: Color(0xFF000931),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Sheet Metal Scrap",
                                style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),



                    ],
                                    ),
                                  ),
                  )
                  : SizedBox.shrink(), // Empty space when not expanded
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded2 = !isExpanded2;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black, Color(0xFF1e3a8a)], // Gradient colors
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Non-Ferrous Scrap",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        isExpanded2
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AnimatedSize(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              child: isExpanded2
                  ? Container(

                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Container(
                          width:MediaQuery.of(context).size.width ,
                          color: Color(0xFF000931),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Aluminium",
                              style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Container(
                          width:MediaQuery.of(context).size.width ,
                          color: Color(0xFF000931),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Brass",
                              style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Container(
                          width:MediaQuery.of(context).size.width ,
                          color: Color(0xFF000931),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Copper",
                              style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Container(
                          width:MediaQuery.of(context).size.width ,
                          color: Color(0xFF000931),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Lead",
                              style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: Container(
                          width:MediaQuery.of(context).size.width ,
                          color: Color(0xFF000931),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Tin",
                              style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          width:MediaQuery.of(context).size.width ,
                          color: Color(0xFF000931),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Zinc",
                              style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )
                  : SizedBox.shrink(), // Empty space when not expanded
            ),
            SizedBox(height: 20,),

            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                color: Color(0xFF000931),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Center(child: Text('GET IN TOUCH', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,letterSpacing: 2),)),
            ),

            SizedBox(height: 80,),
            Container(
              width:MediaQuery.of(context).size.width ,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 40),
                child: Center(
                  child: Wrap(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: 100, // Adjust logo width
                          height: 100, // Adjust logo height
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Black.png'), // Replace with your image path
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("contact@urbanscrapper.com", style: TextStyle(color: Colors.white),),
                              Text("+1 6146079235", style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );

  }
  Widget _buildWhyUsCard({required IconData icon, required String title, required String description}) {
    return Container(
      width: 350,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 50, color: Colors.teal),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }




}

