import 'package:flutter/material.dart';
import 'package:money_management/views/widgets/logo.dart';
import 'package:money_management/views/widgets/photo.dart';
import 'package:money_management/views/widgets/responsive_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 236, 235),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Row(
            children: [
              // Menu
              Container(
                constraints: BoxConstraints(maxHeight: height),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Logo
                    const Logo(),

                    // Profile-Settings
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Profile
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Photo
                            const Photo(),

                            // Spacer
                            const SizedBox(width: 10),

                            // Name/Function
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                // Nome
                                Text(
                                  "Nome",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),

                                //Function
                                Text(
                                  "Position",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),

                        // Pages
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Column(
                              children: [],
                            )),
                      ],
                    ),

                    // Log Out
                    const ResponsiveButton.withIcon(
                      text: "Log Out",
                      icon: Icons.logout_outlined,
                    )
                  ],
                ),
              ),

              // Divider
              const VerticalDivider(width: 200)

              // App Area
            ],
          ),
        ),
      ),
    );
  }
}
