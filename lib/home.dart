import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final statusColor = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.grey[900]);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(statusColor);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/bg.jpg")),
        ),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    onPressed: () => {
                      PopupMenuButton(
                        initialValue: 2,
                        onCanceled: () {
                          print('cancelled!');
                        },
                        onSelected: (int index) {
                          print('index is $index');
                        },
                        child:const Center(
                            child: Text('click here')),
                        itemBuilder: (context) {
                          return List.generate(5, (index) {
                            return PopupMenuItem(
                              value: index,
                              child: Text('button no $index'),
                            );
                          });
                        },
                      ),
                    },
                    icon: const Icon(Icons.menu, size: 30),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white)),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 270,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "30°C",
                              style: GoogleFonts.lato(fontSize: 80),
                            ),
                            Text(
                              "Today : Monday",
                              style: GoogleFonts.lato(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 270,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 15),
                            Text(
                              "30°C",
                              style: GoogleFonts.lato(fontSize: 25),
                            ),
                            Text(
                              "Temperature",
                              style: GoogleFonts.lato(),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              "20 Km/H",
                              style: GoogleFonts.lato(fontSize: 25),
                            ),
                            Text(
                              "Wind Speed",
                              style: GoogleFonts.lato(),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              "23 M.M.",
                              style: GoogleFonts.lato(fontSize: 25),
                            ),
                            Text(
                              "Cloud Rain",
                              style: GoogleFonts.lato(),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              "5 Km",
                              style: GoogleFonts.lato(fontSize: 25),
                            ),
                            Text(
                              "View Visibility",
                              style: GoogleFonts.lato(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "Weekend Information",
                style:
                    GoogleFonts.lato(fontSize: 20, color: Colors.blueGrey[900]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[50]),
                child: const ListTile(
                  leading: Icon(Icons.cloud_outlined),
                  title: Text("Tuesday"),
                  trailing: Text("27°C"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[50]),
                child: const ListTile(
                  leading: Icon(Icons.cloud_outlined),
                  title: Text("Wednesday"),
                  trailing: Text("30°C"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[50]),
                child: const ListTile(
                  leading: Icon(Icons.cloud_outlined),
                  title: Text("Thirsday"),
                  trailing: Text("25°C"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[50]),
                child: const ListTile(
                  leading: Icon(Icons.cloud_outlined),
                  title: Text("Friday"),
                  trailing: Text("34°C"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[50]),
                child: const ListTile(
                  leading: Icon(Icons.cloud_outlined),
                  title: Text("Saturday"),
                  trailing: Text("23°C"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[50]),
                child: const ListTile(
                  leading: Icon(Icons.cloud_outlined),
                  title: Text("Sunday"),
                  trailing: Text("37°C"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
