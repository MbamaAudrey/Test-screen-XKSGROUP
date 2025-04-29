import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_test/presentation/routes/app_router.dart';
import 'package:screen_test/ui/core_compoment/h2.dart';
import '../../app_colors.dart';
import '../../ui/core_compoment/h1.dart';
import '../../ui/ui_compoment/article_item.dart';
import '../controllers/article_controller.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ArticleListPage extends StatelessWidget {
  final ArticleController controller = Get.find<ArticleController>();
  TextEditingController textEditingController = TextEditingController();
  ScrollController scrollController = ScrollController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        backgroundColor: AppColors.colorprimary,
        title: Text('Politique',style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold,color: AppColors.white),),
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
      body: SingleChildScrollView(
        controller: scrollController,
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [

              SizedBox(
                height: MediaQuery.sizeOf(context).height / 2.5,
                width:  MediaQuery.sizeOf(context).width,

                child: Stack(
                  children: [

                    Image.asset('assets/images/imagebackground.png',
                      fit: BoxFit.cover,
                      width:  MediaQuery.sizeOf(context).width,
                      height:  MediaQuery.sizeOf(context).height,),

                    Container(
                      height: MediaQuery.sizeOf(context).height / 2,
                      width:  MediaQuery.sizeOf(context).width,
                      color: AppColors.blackopacity,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 30,right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          H1(text: 'Politique',color: AppColors.white,),
                          const SizedBox(height: 10),
                          H2(text: "Suivez les dernières nouvelles des 54 États d'Afrique, avec des analyses approfondies et des reportages en direct pour comprendre les enjeux politiques, économiques et sociaux du continent.",
                              color: AppColors.white),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 32),

              //  sizeBox Search.

              SizedBox(
                child: Row(
                  children: [

                    Expanded(child:
                    InkWell(
                      onTap: (){
                        // lancer l'ecran de recherche des news
                      },
                      child: Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 10),
                              const Icon(FontAwesomeIcons.magnifyingGlass,color: AppColors.scale1,size: 18),
                              const SizedBox(width: 10),
                              Text("Rechercher un article", style :
                              GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400,
                                  color: AppColors.scale1),),

                            ],
                          )
                      ),
                    ),),
                    const SizedBox(width: 10),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset('assets/images/iconstyleseach.png'),
                      ),
                    )
                  ],
                ),
              ),
              /*SizedBox(
                height: 50,
                child: Row(
                  children: [
                          Expanded(
                    child: SimpleTextField(
                      margin: EdgeInsets.zero,
                      hintText: 'Rechercher un article',
                      hauteur: 20,
                      obscureText: false,
                      iconP: const Icon(FontAwesomeIcons.magnifyingGlass,color: AppColors.scale1,size: 18),
                      fillColor: AppColors.white,
                      controller: textEditingController,
                      typeText: TextInputType.number,
                      valueChanged: (value){

                      },
                      //validator: (value) => value!.isEmpty ? 'Champ obligatoire' : null,
                    ),),
                  const SizedBox(width: 10),
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset('assets/images/iconstyleseach.png'),
                    ),
                  )
                  ],
                ),
              ),*/

              Obx(() {
                if (controller.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemCount: controller.articles.length,
                  shrinkWrap: true,
                  controller: scrollController,
                  itemBuilder: (_, i) {
                    final a = controller.articles[i];
                    return InkWell(onTap: (){
                      // lancer l'ecran de recherche des news
                      context.pushRoute(ArticleDetailRoute(article: a));
                    }
                      ,child: Container(child:
                      articleItem(pathImg: a.imageUrl,)));

                  },
                );
              }),
            ],
          ),
        ),
      )
    );
  }
}
