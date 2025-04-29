// lib/presentation/pages/article_detail_page.dart
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../app_colors.dart';
import '../../domain/entities/article.dart';
import 'package:auto_route/annotations.dart';

@RoutePage()
class ArticleDetailPage extends StatelessWidget {
  final Article article;
  const ArticleDetailPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop(); // Retour à la page précédente
          },
        ),
        backgroundColor: AppColors.colorprimary,
        title: Text('Details de l\'article',style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold,color: AppColors.white),),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){

            },
            child: Image.asset('assets/images/reche.png',
              width: 20, height: 20,),
          ),
          const SizedBox(width: 15),
          InkWell(
            onTap: (){

            },
            child: Image.asset('assets/images/search.png',
                width: 18, height: 18),
          ),
          const SizedBox(width: 12),
        ],

      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 42,
            color: AppColors.red,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white, width: 1),
                      shape: BoxShape.circle),
                  child: const Icon(Icons.play_arrow,color: Colors.white,size: 20,),
                ),
                SizedBox(width: 10),
                Text('en ce moment sur d5news'.toUpperCase(),style: GoogleFonts.
                poppins(fontSize: 16, fontWeight: FontWeight.bold,color: AppColors.white),),

              ],
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [


                Container(
                  padding: const EdgeInsets.only(top: 20, left: 16, right: 16,bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Catégorie
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                        decoration: BoxDecoration(
                          color: AppColors.backgroundbutton,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'SPORT',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Titre de l'article
                      Text(
                        'L’essor des athlètes africains dans l’athlétisme mondial',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          height: 1.4,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 12),

                      // Métadonnées
                      Row(
                        children: [

                          Icon(Icons.account_circle_outlined, size: 24, color: Colors.grey[800]),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'D5Newstest',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[800],
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'ADMIN',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 12),

                          Row(
                            children: [
                              Icon(Icons.date_range_outlined, size: 22, color: Colors.grey[800]),
                              const SizedBox(width: 8),
                              Text(
                                '15 Sept. 2024',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 12),
                          Row(
                            children: [
                              Icon(Icons.alarm, size: 22, color: Colors.grey[800]),
                              const SizedBox(width: 8),
                              Text(
                                '42secs',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Stack(
                      children: [
                        Image.asset(
                          height: MediaQuery.sizeOf(context).height / 3.5,
                          width: MediaQuery.sizeOf(context).width,
                          "assets/images/sportimg.jpg",fit: BoxFit.cover,),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.remove_red_eye_outlined,color: AppColors.scale1,size: 28,), const SizedBox(width: 4),
                              Text('6',style: TextStyle(fontSize: 14)),
                              const SizedBox(width: 16),
                              const Icon(Icons.thumb_up_alt_outlined,color: AppColors.scale1,size: 28,), const SizedBox(width: 4),
                              Text('1',style: TextStyle(fontSize: 14)),
                            ]),

                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey[200],
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/facebook.png',
                                  fit: BoxFit.cover,
                                  width: 40,   // = radius * 2
                                  height: 40,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey[200],
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/x.png',
                                  fit: BoxFit.cover,
                                  width: 40,   // = radius * 2
                                  height: 40,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey[200],
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/whatsapp.png',
                                  fit: BoxFit.cover,
                                  width: 40,   // = radius * 2
                                  height: 40,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey[200],
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/linkdind.png',
                                  fit: BoxFit.cover,
                                  width: 40,   // = radius * 2
                                  height: 40,
                                ),
                              ),
                            )


                          ],
                        ),



                      ],
                    ),
                    const SizedBox(height: 12),
                    Text("L'athlétisme africain continue de dominer les podiums mondiaux, avec des athlètes venant principalement des pays de l'Est africain, comme le Kenya et l'Éthiopie. Le premier paragraphe analysera les performances des athlètes africains dans les grandes compétitions internationales, telles que les Jeux olympiques et les championnats du monde d'athlétisme. Des figures emblématiques comme Eliud Kipchoge et Hellen Obiri ont placé l’Afrique en tête des marathons et des courses de fond. Des figures emblématiques comme Eliud Kipchoge et Hellen Obiri ont placé l’Afrique en tête des marathons et des courses de fond. Des figures emblématiques comme Eliud Kipchoge et Hellen Obiri ont placé l’Afrique en tête des marathons et des courses de fond. Des figures emblématiques comme Eliud Kipchoge et Hellen Obiri ont placé l’Afrique en tête des marathons et des courses de fond. Des figures emblématiques comme Eliud Kipchoge et Hellen Obiri ont placé l’Afrique en tête des marathons et des courses de fond.",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400,
                          fontSize: 15,height: 1.7,color: Colors.black),),


                  ]),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12,top: 18,bottom: 50),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Stack(
                      children: [
                        Image.asset(
                          height: MediaQuery.sizeOf(context).height / 7,
                          width: MediaQuery.sizeOf(context).width,
                          "assets/images/ads.jpg",fit: BoxFit.cover,),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),)
        ],
      ),
    );
  }
}
