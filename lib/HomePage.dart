import 'package:flutter/material.dart';
import 'package:mobile_challenge/DummyData.dart';
import 'package:mobile_challenge/InformationScreen.dart';
import 'package:mobile_challenge/PatientCard.dart';
import 'package:mobile_challenge/RoundFlatButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _appBarElevation;
  ScrollController _scrollController;

  @override
  void initState() {
    _appBarElevation = 0.0;
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == 0.0 && _appBarElevation != 0.0)
        setState(() {
          _appBarElevation = 0.0;
        });
      else if (_scrollController.position.pixels != 0.0 &&
          _appBarElevation == 0.0)
        setState(() {
          _appBarElevation = 8.0;
        });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0e0e0),
      appBar: AppBar(
        backgroundColor: Color(0xffe0e0e0),
        elevation: _appBarElevation,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Icon(
            Icons.menu_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Welcome Back!",
                    // style: GoogleFonts.roboto().copyWith(
                    //   color: Colors.black45,
                    //   fontSize: 16,
                    // ),
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Dr. Peterson",
                    // style: GoogleFonts.roboto().copyWith(
                    //   color: Colors.black45,
                    //   fontSize: 16,
                    // ),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: Container(
                    // height: 220,
                    // width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          32,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 16),
                          blurRadius: 4,
                          spreadRadius: -12,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(32),
                              topLeft: Radius.circular(32),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                              vertical: 16.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Appointment Request",
                                      style: TextStyle(
                                        color: Colors.white54,
                                      ),
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.alarm_rounded,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      "12 Jan 2020, 8am - 10am",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 16.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(18),
                                    ),
                                    child: Image.asset(
                                      "assets/profile.jpeg",
                                      height: 52,
                                      width: 52,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Louis"),
                                      Text("Patterson"),
                                    ],
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              InformationScreen(),
                                          settings: RouteSettings(
                                            arguments: {
                                              "date": "12 Jan 2020, 8am - 10am",
                                              "name": "Louis Patterson",
                                              "image_url": "asset/profile.jpeg",
                                              "comment":
                                                  "Hello Dr. Peterson,\n I am going to bring my complete blood count analysis with me",
                                              "attachments": [
                                                {
                                                  "title":
                                                      "Complete blood count",
                                                  "date": "05 Mar 2020",
                                                }
                                              ],
                                            },
                                          ),
                                        ),
                                      );
                                    },
                                    icon: Icon(Icons.info_outline_rounded),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: RoundFlatButton(
                                      onTap: () => {},
                                      backgroundColor: Colors.blue,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Text(
                                        "Accept",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: RoundFlatButton(
                                      onTap: () => {},
                                      backgroundColor: Colors.black12,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(100),
                                      ),
                                      child: Text(
                                        "Decline",
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Expanded(
                                  //   flex: 2,
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: Text(
                    "Next Appointments",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
                ListView.separated(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    right: 24.0,
                    top: 24.0,
                    bottom: 300,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: nextAppointments.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 16.0,
                  ),
                  itemBuilder: (context, index) => PatientCard(
                    imageUrl: nextAppointments[index]["image_url"],
                    name: nextAppointments[index]["name"],
                    date: nextAppointments[index]["date"],
                    isOnline: nextAppointments[index]["is_online"],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: IgnorePointer(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(double.minPositive),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
