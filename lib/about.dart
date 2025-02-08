import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrap/homepage.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black), // Change menu icon color
        elevation: 0, // Remove shadow
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'), // Replace with your logo path
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
          color: Colors.black,
          child: Column(
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
                child: Container(
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Homepage()),
                            );
                          },
                          child: Text(
                            "HOME",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 40,
                        child: GestureDetector(
                          onTap: () {
                            print("Services tapped"); // Replace with navigation logic for Services
                          },
                          child: Text(
                            "SERVICES",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 40,
                        child: GestureDetector(
                          onTap: () {
                            print("Contact tapped"); // Replace with navigation logic for Contact
                          },
                          child: Text(
                            "CONTACT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 40,
                        child: GestureDetector(
                          onTap: () {
                            print("Careers tapped"); // Replace with navigation logic for Careers
                          },
                          child: Text(
                            "CAREERS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 40,
                        child: GestureDetector(
                          onTap: () {
                            print("FAQs tapped"); // Replace with navigation logic for FAQs
                          },
                          child: Text(
                            "FAQs",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/About.jpg'), // Replace with your logo path
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 20),
              // Description Section
              Container(

                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Center(
                        child: Text(
                                          "BASICALLY WE EXPORT EXACTLY WHAT YOU'RE LOOKING FOR!",
                                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),

                      Text(
                        "ABOUT US",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 25,
                            letterSpacing: -0.3, // Adjust font size as needed
                            fontWeight: FontWeight.w700, // Adjust weight (normal, bold, etc.)
                            color: Color(0xFF6a3e12), // Adjust color
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "At URBAN SCRAPPER LLC, we are committed to revolutionizing the scrap metal industry by bridging the gap between waste and opportunity. Based in the Ohio, we specialize in procurement, export, and distribution of high-quality ferrous and non-ferrous scrap metal, serving dealers, factories, and stakeholders worldwide.",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      // Section: Vision
                      Text(
                        "OUR VISION",
                        style: GoogleFonts.montserrat(
                          textStyle:TextStyle(
                            fontSize: 25,
                            letterSpacing: -0.3, // Adjust font size as needed
                            fontWeight: FontWeight.w700, // Adjust weight (normal, bold, etc.)
                            color: Color(0xFF6a3e12), // Adjust color
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "To lead the global scrap metal industry by promoting environmental sustainability, fostering innovation, and driving value creation for our partners.",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      // Section: Mission
                      Text(
                        "MISSION",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 25,
                            letterSpacing: -0.3, // Adjust font size as needed
                            fontWeight: FontWeight.w700, // Adjust weight (normal, bold, etc.)
                            color: Color(0xFF6a3e12), // Adjust color
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "To transform waste into valuable resources through efficient procurement, export, and distribution practices while adhering to ethical and environmentally sustainable standards.",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      // Section: Why Choose Us
                      Text(
                        "WHY US?",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 25,
                            letterSpacing: -0.3, // Adjust font size as needed
                            fontWeight: FontWeight.w700, // Adjust weight (normal, bold, etc.)
                            color: Color(0xFF6a3e12), // Adjust color
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "- Expertise: Years of experience in the scrap metal industry with a deep understanding of global markets.\n"
                            "- Efficiency: A well-organized logistics network that ensures smooth operations at every stage.\n"
                            "- Sustainability: Commitment to eco-friendly practices that reduce environmental impact.\n"
                            "- Customer Focus: Dedicated to delivering value and quality to our clients, every step of the way.",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 40,),
            Center(
              child: Container(width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF040e41),
              ),
              height: 50,

                child: Center(child: Text("CONTACT NOW", style: TextStyle(fontSize: 13,color: Colors.white, letterSpacing: 2,fontWeight: FontWeight.bold),)),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
