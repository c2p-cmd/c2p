import 'package:c2p/screens/meme_widget.dart';
import 'package:c2p/screens/pdf_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context).textTheme;
    final headerStyle = theme.navTitleTextStyle.copyWith(
      fontSize: 27,
    );

    return Scaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      body: CustomScrollView(
        controller: controller,
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text("Hey! 👋 I am Sharan Thakur"),
          ),
          const SliverGap(20),
          SliverList.list(
            children: [
              // About me
              Center(
                child: Text(
                  "A Passionate Developer From India  🇮🇳",
                  style: headerStyle,
                ),
              ),
              // About me
              CupertinoListSection(
                header: Text(
                  "💫  About Me",
                  style: headerStyle,
                ),
                children: [
                  CupertinoListTile(
                    leading: Text(
                      '🔭',
                      style: theme.textStyle.copyWith(
                        fontSize: 21,
                      ),
                    ),
                    title: Text.rich(
                      TextSpan(
                        text: "I’m currently working on ",
                        children: [
                          TextSpan(
                            text: "enhancing my problem-solving skills.",
                            style: theme.textStyle.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CupertinoListTile(
                    leading: Text(
                      '🌱 ',
                      style: theme.textStyle.copyWith(
                        fontSize: 21,
                      ),
                    ),
                    title: Text.rich(
                      TextSpan(
                        text: "I’m currently a ",
                        children: [
                          TextSpan(
                            text: "Game Developer & Mobile App Developer",
                            style: theme.textStyle.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CupertinoListTile(
                    leading: Text(
                      '👨‍💻',
                      style: theme.textStyle.copyWith(
                        fontSize: 21,
                      ),
                    ),
                    title: Text.rich(
                      TextSpan(
                        text:
                            "All of my project source codes are available at ",
                        children: [
                          TextSpan(
                            style: theme.textStyle.copyWith(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.w600,
                            ),
                            text: "c2p-cmd",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrlString(
                                  "https://github.com/c2p-cmd/",
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  CupertinoListTile(
                    leading: Text(
                      '💬 ',
                      style: theme.textStyle.copyWith(
                        fontSize: 21,
                      ),
                    ),
                    title: Text.rich(
                      TextSpan(
                        text: "Ask me about ",
                        children: [
                          TextSpan(
                            text: "new technology and video games.",
                            style: theme.textStyle.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CupertinoListTile(
                    leading: Text(
                      '📄 ',
                      style: theme.textStyle.copyWith(
                        fontSize: 21,
                      ),
                    ),
                    title: Text.rich(
                      TextSpan(
                        text: "Know about my experiences -> ",
                        children: [
                          TextSpan(
                            text: "Resume",
                            style: theme.textStyle.copyWith(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                final route = CupertinoPageRoute(
                                  fullscreenDialog: true,
                                  builder: (_) {
                                    return const PDFPage();
                                  },
                                );
                                Navigator.of(context).push(route);
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  CupertinoListTile(
                    leading: Text(
                      '⚡️',
                      style: theme.textStyle.copyWith(
                        fontSize: 21,
                      ),
                    ),
                    title: Text.rich(
                      TextSpan(
                        text: "Fun fact ",
                        children: [
                          TextSpan(
                            text:
                                "Super Mario characters got their names from famous musicians.",
                            style: theme.textStyle.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Socials
              CupertinoListSection(
                header: Text(
                  "🌐  Socials",
                  style: headerStyle,
                ),
                separatorColor: Colors.transparent,
                children: [
                  CupertinoListTile(
                    title: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            launchUrlString("https://instagram.com/captain2phones_");
                          },
                          child: Image.asset(
                            "assets/badges/Instagram.png",
                          ),
                        ),
                        const Gap(10),
                        InkWell(
                          onTap: () {
                            launchUrlString("https://linkedin.com/in/sharan-thakur-a4a0861b5/");
                          },
                          child: Image.asset(
                            "assets/badges/LinkedIn.png",
                          ),
                        ),
                        const Gap(10),
                        InkWell(
                          onTap: () {
                            launchUrlString("https://pinterest.com/@sharanthakur");
                          },
                          child: Image.asset(
                            "assets/badges/Pinterest.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            launchUrlString("https://reddit.com/user/Captain2Phones_");
                          },
                          child: Image.asset(
                            "assets/badges/Reddit.png",
                          ),
                        ),
                        const Gap(10),
                        InkWell(
                          onTap: () {
                            launchUrlString("https://twitter.com/@AlexmercerMe");
                          },
                          child: Image.asset(
                            "assets/badges/Twitter.png",
                          ),
                        ),
                        const Gap(10),
                        InkWell(
                          onTap: () {
                            launchUrlString("https://www.hackerrank.com/sharandt19");
                          },
                          child: Image.asset(
                            "assets/badges/HackerRank.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Tech Stack
              CupertinoListSection(
                header: Text(
                  "🖥️  Tech Stack",
                  style: headerStyle,
                ),
                separatorColor: Colors.transparent,
                children: [
                  CupertinoListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          "assets/badges/flutter.png",
                        ),
                        const Gap(10),
                        Image.asset(
                          "assets/badges/dart.png",
                        ),
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          "assets/badges/swift.png",
                        ),
                        const Gap(10),
                        Image.asset(
                          "assets/badges/swiftui.png",
                        ),
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          "assets/badges/unity.png",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Github Stats
              CupertinoListSection(
                header: Text(
                  "📊  GitHub Stats",
                  style: headerStyle,
                ),
                children: [
                  CupertinoListTile(
                    title: Wrap(
                      children: [
                        Image.network(
                          "https://github-readme-stats.vercel.app/api?username=c2p-cmd&hide_border=true&no-frame=true&include_all_commits=true&count_private=false",
                        ),
                        Image.network(
                          "https://github-readme-streak-stats.herokuapp.com/?user=c2p-cmd&no-frame=true&hide_border=true",
                        ),
                        Image.network(
                          "https://github-readme-stats.vercel.app/api/top-langs/?username=c2p-cmd&no-frame=true&hide_border=true&include_all_commits=false&count_private=true&layout=compact",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Github Trophies
              CupertinoListSection(
                header: Text(
                  "🏆 GitHub Trophies",
                  style: headerStyle,
                ),
                children: [
                  CupertinoListTile(
                    title: Image.network(
                      "https://github-profile-trophy.vercel.app/?username=c2p-cmd&theme=flag-india&no-frame=true&no-bg=false&margin-w=4",
                    ),
                  ),
                ],
              ),
              // Random Dev Quote
              CupertinoListSection(
                header: Text(
                  "✍️ Random Dev Quote",
                  style: headerStyle,
                ),
                children: [
                  CupertinoListTile(
                    title: Center(
                      child: Wrap(
                        direction: Axis.vertical,
                        children: [
                          const Gap(18),
                          Image.network(
                            "https://quotes-github-readme.vercel.app/api?type=vertical&theme=catppuccin_latte",
                          ),
                          const Gap(18),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Random Dev Meme
              CupertinoListSection(
                header: Text(
                  "😂️ Random Dev Meme",
                  style: headerStyle,
                ),
                children: const [
                  CupertinoListTile(
                    title: Center(
                      child: Wrap(
                        direction: Axis.vertical,
                        children: [
                          Gap(18),
                          MemeWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
