import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class SwapShift extends StatefulWidget {
  const SwapShift({super.key});

  @override
  State<SwapShift> createState() => _SwapShiftState();
}

class _SwapShiftState extends State<SwapShift> {
  final controller = TextEditingController();
  final controller2 = TextEditingController();
  Color? backGroundColor=Colors.grey[100];
  Color textColor=const Color.fromRGBO(145, 158, 171, 0.8);
  void isWrite(){
    if(controller2.text.isNotEmpty&&controller.text.isNotEmpty){
      setState(() {
        textColor = HexColor('#FFFFFF');
        backGroundColor = HexColor('#3F4760');
      });
    }else{
      setState(() {
        textColor = const Color.fromRGBO(145, 158, 171, 0.8);
        backGroundColor = Colors.grey[100];
      });
    }
  }
  @override
  void initState() {
    isWrite();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          child: const Text('swapShift'),
          onPressed: () {

              showModalBottomSheet<dynamic>(
                shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16)),
                    borderSide: BorderSide(width: 0, color: Colors.white)),
               isScrollControlled: true,
               context: context, builder: (BuildContext context) {return Wrap(
                 children: [Container(
                   decoration: const BoxDecoration(
                     borderRadius: BorderRadius.only(
                         topRight: Radius.circular(16),
                         topLeft: Radius.circular(16)),
                     color: Colors.white,
                   ),
                   child: Column(
                     children: [
                       Container(
                           height: 48,
                           decoration: const BoxDecoration(
                               color: Color.fromRGBO(145, 158, 171, 0.24)),
                           child: Center(
                             child: Text(
                               'SwapShift',
                               style: TextStyle(
                                   fontWeight: FontWeight.w700,
                                   fontSize: 13,
                                   color: HexColor('#000000')),
                             ),
                           )),
                       const SizedBox(
                         height: 16,
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Row(
                           children: [
                             Text(
                               'Swap Shift Details',
                               style: TextStyle(
                                   fontSize: 12,
                                   fontWeight: FontWeight.w700,
                                   color: HexColor('#637381')),
                             ),
                             Expanded(
                                 child: Container(
                                   height: 1,
                                   color: const Color.fromRGBO(145, 158, 171, 0.24),
                                 ))
                           ],
                         ),
                       ),
                       const SizedBox(
                         height: 16,
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20),
                         child: Row(
                           children: [
                             SvgPicture.asset('assets/clock.svg'),
                             const SizedBox(
                               width: 16,
                             ),
                             RichText(
                                 text: TextSpan(children: [
                                   TextSpan(
                                       text: '07:00 AM - 10:00 AM\n',
                                       style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontSize: 14,
                                           color: HexColor('#212B36'))),
                                   TextSpan(
                                       text: 'Morning (02/04/2023)',
                                       style: TextStyle(
                                           fontSize: 14,
                                           fontWeight: FontWeight.w400,
                                           color: HexColor('#637381')))
                                 ]))
                           ],
                         ),
                       ),
                       const SizedBox(
                         height: 16,
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20),
                         child: Row(
                           children: [
                             Image.asset('assets/IMG.jpg'),
                             const SizedBox(
                               width: 16,
                             ),
                             RichText(
                                 text: TextSpan(children: [
                                   TextSpan(
                                       text: 'Aino Laine\n',
                                       style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontSize: 14,
                                           color: HexColor('#212B36'))),
                                   TextSpan(
                                       text: 'Nurse',
                                       style: TextStyle(
                                           fontSize: 14,
                                           fontWeight: FontWeight.w400,
                                           color: HexColor('#637381')))
                                 ]))
                           ],
                         ),
                       ),
                       const SizedBox(
                         height: 16,
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Row(
                           children: [
                             Text(
                               'Shift Receiver Details',
                               style: TextStyle(
                                   fontSize: 12,
                                   fontWeight: FontWeight.w700,
                                   color: HexColor('#637381')),
                             ),
                             Expanded(
                                 child: Container(
                                   height: 1,
                                   color: const Color.fromRGBO(145, 158, 171, 0.24),
                                 ))
                           ],
                         ),
                       ),
                       const SizedBox(
                         height: 16,
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16),
                         child: SizedBox(
                             height: 40,
                             child: TextField(
                               onChanged: (val){
                                 isWrite();
                               },
                               controller: controller,
                               decoration: InputDecoration(
                                   floatingLabelStyle: TextStyle(
                                       fontSize: 12,
                                       fontWeight: FontWeight.w400,
                                       color: HexColor('#212B36')),
                                   labelText: 'Staff Name',
                                   labelStyle: TextStyle(
                                       fontWeight: FontWeight.w400,
                                       fontSize: 16,
                                       color: HexColor('#919EAB')),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(8),
                                     borderSide: BorderSide(
                                         color: HexColor("#212B36"), width: 1),
                                   ),
                                   enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(8),
                                     borderSide: const BorderSide(
                                         color:
                                         Color.fromRGBO(145, 158, 171, 0.32),
                                         width: 1),
                                   )),
                             )),
                       ),
                       const SizedBox(
                         height: 16,
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(
                           horizontal: 16,
                         ),
                         child: SizedBox(
                           height: 128,
                           child: TextField(
                             maxLines: 128,
                             controller: controller2,
                             onChanged: (val){
                               isWrite();
                             },
                             decoration: InputDecoration(
                                 floatingLabelStyle: TextStyle(
                                     fontSize: 12,
                                     fontWeight: FontWeight.w400,
                                     color: HexColor('#212B36')),
                                 hintText: 'Leave a Comment',
                                 hintStyle: TextStyle(
                                     fontWeight: FontWeight.w400,
                                     fontSize: 16,
                                     color: HexColor('#919EAB')),
                                 focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8),
                                   borderSide: BorderSide(
                                       color: HexColor("#212B36"), width: 1),
                                 ),
                                 enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8),
                                   borderSide: const BorderSide(
                                       color: Color.fromRGBO(145, 158, 171, 0.32),
                                       width: 1),
                                 )),
                           ),
                         ),
                       ),
                       Padding(
                         padding:
                         const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                         child: Row(
                           children: [
                             Expanded(
                                 child: ElevatedButton(
                                   style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(8),
                                     ),
                                     backgroundColor: Colors.white,
                                     minimumSize: const Size(double.infinity, 36),
                                   ),
                                   onPressed: () {},
                                   child:  Text('Cancel',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: HexColor('#212B36'))),
                                 )),
                             const SizedBox(
                               width: 24,
                             ),
                             Expanded(
                                 child: ElevatedButton(
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: backGroundColor,
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(8),
                                     ),
                                     minimumSize: const Size(double.infinity, 36),
                                   ),
                                   onPressed: () {

                                   },
                                   child: Text('Swap Shift',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: textColor),),
                                 )),
                           ],
                         ),
                       )
                     ],
                   ),
                 ),]
               );  });
          },
        ),
      ),
    );
  }
}
