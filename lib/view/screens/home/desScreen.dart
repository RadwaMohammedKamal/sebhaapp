import 'package:flutter/material.dart';
import 'package:sebhaapp/constant.dart';
import 'package:sebhaapp/view/screens/splash/cardzekr.dart';
class DesScreen extends StatefulWidget {
  const DesScreen({Key? key}) : super(key: key);


  @override
  State<DesScreen> createState() => _DesScreenState();
}

class _DesScreenState extends State<DesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backgroundcolor ,
appBar: AppBar(
  backgroundColor: backgroundcolor,
  elevation: 0,
  centerTitle: true,
  leading:IconButton(onPressed:(){
Navigator.pop(context);
  }, icon:Icon( Icons.arrow_back_ios,size: 25,) ),
  title: Text("اذكار الصباح",
      style: TextStyle(
      fontSize: textFont18,
    fontWeight: FontWeight.w600,
  ),
  ),
),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CardZaker(count: 5,text: "“((اللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا ، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ)). [وإذا أمسى قال: اللَّهم بك أمسينا، وبك أصبحنا، وبك نحيا، وبك نموت، وإليك المصير.]”",),
            CardZaker(count: 20,text: "“(اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلاَّ أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لاَ يَغْفِرُ الذُّنوبَ إِلاَّ أَنْتَ)”",),
            CardZaker(count: 10,text: "“((سُبْحَانَ اللَّهِ وَبِحَمْدِهِ))”",),
          ],
        ),
      ),
    );
  }
}
