import 'package:flutter/material.dart';
import 'package:money_management/views/widgets/logo.dart';
import 'package:money_management/views/widgets/menu_item.dart';
import 'package:money_management/views/widgets/photo.dart';
import 'package:money_management/views/widgets/responsive_button.dart';
import 'package:money_management/views/widgets/responsive_text.dart';

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
          padding: const EdgeInsets.all(40),
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
                            const SizedBox(width: 15),

                            // Name/Function
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                // Nome
                                ResponsiveText(
                                  text: "Name",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontColor: Colors.black,
                                ),

                                //Function
                                ResponsiveText(
                                  text: "Position",
                                  fontSize: 14,
                                  fontColor: Colors.black54,
                                ),
                              ],
                            ),
                          ],
                        ),

                        // Spacer
                        const SizedBox(height: 50),

                        // Pages
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            // Wallet
                            MenuItem(
                              icon: Icons.wallet_outlined,
                              titleText: "Wallet",
                              titleFontSize: 18,
                              subtitleText: "1.000.000",
                              subtitleFontSize: 14,
                            ),

                            // Divider
                            SizedBox(height: 15),

                            // Payments
                            MenuItem(
                              icon: Icons.pie_chart,
                              titleText: "Payments",
                              titleFontSize: 18,
                              subtitleText: "15 facilities",
                              subtitleFontSize: 14,
                            ),

                            // Divider
                            SizedBox(height: 15),

                            // Security
                            MenuItem(
                              icon: Icons.lock,
                              titleText: "Security",
                              titleFontSize: 18,
                              subtitleText: "Setup Acess",
                              subtitleFontSize: 14,
                            ),

                            // Divider
                            SizedBox(height: 15),

                            // Team
                            MenuItem(
                              icon: Icons.groups,
                              titleText: "Team",
                              titleFontSize: 18,
                              subtitleText: "4 members",
                              subtitleFontSize: 14,
                            ),
                          ],
                        ),
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
