import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_test/app_colors.dart';


class articleItem extends StatelessWidget {


  String pathImg;

  articleItem({required this.pathImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 2.8,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [

          SizedBox(
            height: MediaQuery.sizeOf(context).height / 3.7,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    child: Stack(
                      children: [

                        Image.asset(
                          width: MediaQuery.sizeOf(context).width,
                          pathImg,fit: BoxFit.cover,),

                        Positioned(
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)),
                              color: AppColors.backgroundblur,

                            ),
                            width: 130,
                            height: 30,
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.remove_red_eye,size: 19,color: Colors.black,),
                                SizedBox(width: 3),
                                Text('17'),
                                SizedBox(width: 14),
                                Icon(Icons.thumb_up,size: 19,color: Colors.black,),
                                SizedBox(width: 3),
                                Text('1'),
                              ],
                            ),
                          ),
                        ),




                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.circular(30)),
                          color: AppColors.white,
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/journaldeux.png',
                      width: 20,height: 20,
                      ),
                    ))

                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              maxLines: 2,
              "La politique étrangère africaine en 2024 : Nouvel…",style:
            GoogleFonts.poppins(fontWeight: FontWeight.w500,
                fontSize: 21,height: 1.4,color: AppColors.black),),
          ),

        ],
      ),


    );
  }
}