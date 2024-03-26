import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class PastDetails{
  final String name;
  final String details;
  final NetworkImage imgurl;
  // final VoidCallback onTap;

  final WebsiteUriFlutter= Uri.parse('https://gdsc.community.dev/events/details/developer-student-clubs-zakir-husain-college-of-engineering-and-technology-aligarh-presents-getting-started-with-flutter-by-google-developer-expert-for-flutter-amp-dart/');
  final WebsiteUriAI= Uri.parse('https://gdsc.community.dev/events/details/developer-student-clubs-zakir-husain-college-of-engineering-and-technology-aligarh-presents-speaker-session-on-aiml/');
  final WebsiteUriMachine= Uri.parse('https://gdsc.community.dev/events/details/developer-student-clubs-zakir-husain-college-of-engineering-and-technology-aligarh-presents-machine-learning-workshop-2/');




  
  PastDetails({required this.name,required this.imgurl,required this.details});




}
final List<PastDetails> PASTDETAILS=[
  PastDetails(name: 'Tech Talk', imgurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_500,h_500,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/events/download_kpZzKwh.png'), details: 'Getting started with FLutter'),
  PastDetails(name: 'Tech Talk', imgurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_500,h_500,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/events/ai-ml_cV7uwMx.png'), details: 'Speaker Session AI/ML'),
  PastDetails(name: 'AI/ML Workshop', imgurl: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_500,h_500,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/events/15658638_J2ICxqx_f6613Ft.png'), details: 'Machine Learning Workshop'),




];


