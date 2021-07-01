class MailModel {
  String title;
  String desc;
  String time;

  MailModel({required this.title, required this.desc, required this.time});

  static List<MailModel> mailList = [
    MailModel(
        title: "Dismissible Widget",
        desc: "This is the flutter dismissible widget tutorial",
        time: "7.51 AM"),
    MailModel(
        title: "Drawer Widget",
        desc:
            "Flutter dismissible widget tutorial,Flutter dismissible widget tutorial ",
        time: "6.31 AM"),
    MailModel(
        title: "Getx Tutorial",
        desc:
            "This is the flutter getx tutorial,Flutter dismissible widget tutorial",
        time: "8.01 AM"),
    MailModel(
        title: "Custom Alert Dialog",
        desc:
            "Flutter Custom Alert Dialog tutorial,Flutter dismissible widget tutorial",
        time: "2.51 PM"),
    MailModel(
        title: "Splash Screen",
        desc:
            "Flutter Splash Screen tutorial,Flutter dismissible widget tutorial",
        time: "2.51 AM"),
    MailModel(
        title: "Onboarding Screen",
        desc:
            "Flutter Onboarding Screen tutorial,Flutter dismissible widget tutorial",
        time: "12.51 AM"),
    MailModel(
        title: "Bottom Navigation bar",
        desc:
            "Flutter Bottom Navigation bar tutorial,Flutter dismissible widget tutorial",
        time: "12.51 AM"),
    MailModel(
        title: "Animated Bottom Navigation bar Tutorial",
        desc:
            "Flutter Animated Bottom Navigation bar tutorial,Flutter dismissible widget tutorial",
        time: "12.51 AM"),
    MailModel(
        title: "Animated Bottom Navigation bar Tutorial",
        desc:
            "Flutter Animated Bottom Navigation bar tutorial,Flutter dismissible widget tutorial",
        time: "12.51 AM"),
    MailModel(
        title: "Animated Bottom Navigation bar Tutorial",
        desc: "Flutter Animated Bottom Navigation bar tutorial",
        time: "12.51 AM"),
    MailModel(
        title: "Animated Bottom Navigation bar Tutorial",
        desc: "Flutter Animated Bottom Navigation bar tutorial",
        time: "12.51 AM"),
    MailModel(
        title: "Animated Bottom Navigation bar Tutorial",
        desc: "Flutter Animated Bottom Navigation bar tutorial",
        time: "12.51 AM"),
    MailModel(
        title: "Animated Bottom Navigation bar Tutorial",
        desc: "Flutter Animated Bottom Navigation bar tutorial",
        time: "12.51 AM"),
  ];

  static List<MailModel> getMails() {
    return mailList;
  }
}
