const String svgBase = "assets/svgs";
const String imageBase = "assets/images";

class AssetsManager {
  AssetsManager._();

  // SVGs
  static const String logo = "assets/images/logo.png";
  static const String alba = "$svgBase/alba.svg";
  static const String upload = "$svgBase/upload.svg";

  static const String home = "$svgBase/home.svg";
  static const String homeActive = "$svgBase/active_home.svg";

  static const String profile = "$svgBase/user.svg";
  static const String profileActive = "$svgBase/active_profile.svg";

  static const String patients = "$svgBase/pations.svg";
  static const String patientsActive = "$svgBase/pations.svg"; // Fallback if no specific active one

  static const String appointments = "$svgBase/calendar-tick.svg";
  static const String appointmentsActive = "$svgBase/active_calendar-tick.svg";

  static const String records = "$svgBase/variants.svg";
  static const String recordsActive = "$svgBase/active_variant.svg";
  static const String messages = "$svgBase/messages.svg";
  static const String notification = "$svgBase/notification.svg";
  static const String search = "$svgBase/search.svg";
  static const String edit = "$svgBase/edit.svg";
  static const String video = "$svgBase/video.svg";
  static const String moneys = "$svgBase/moneys.svg";

  static const String security = "$svgBase/security_time.svg";
  static const String emptyWallet = "$svgBase/empty_wallet.svg";
  static const String tickCircle = "$svgBase/tick_circle.svg";



  static const String ads = "$imageBase/ads.png";
  static const String skinDoc = "$imageBase/skin_doc.png";


  // Images
  static const String doctor = "$imageBase/doc.png";
  static const String user = "$imageBase/user.png";
}
