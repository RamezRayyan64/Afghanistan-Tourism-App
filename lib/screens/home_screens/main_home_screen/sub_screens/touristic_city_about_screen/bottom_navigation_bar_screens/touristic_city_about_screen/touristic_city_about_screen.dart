import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_about_screen/widgets/touristic_city_about_detail_widget.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/sub_screens/touristic_city_about_screen/bottom_navigation_bar_screens/touristic_city_about_screen/widgets/touristic_city_image_widget.dart';
import 'package:flutter/material.dart';

class TouristicCityAboutScreen extends StatelessWidget {
  const TouristicCityAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TouristicCityAboutImageWidget(),
          SizedBox(
            height: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: 'About',
            type: 'text',
            text:
                'Herat is the second largest city in Afghanistan, located in the north western part of Afghanistan. It is famous as Nagin Aseeya or Diamond of Asia in some literature. The city has a history of more than 3000 years. History of this city is very eventful. It was destroyed and rebuilt many times. After the fall of the communist government in Afghanistan in the early 1990s, the city changed its face due to development by Ismail Khan (Amir Ismail Khan), a local Jihadi Commander who ruled Herat till the takeover by the Taliban. Ismail Khan became the governor of this province again after the fall of Taliban and the establishment of the Karzai Government. He has continued to build on his earlier works. The people are very friendly and hospitable to foreigners and are also more religious than people in Kabul. Most of the young understand some English and occasionally other foreign languages. It is comparatively safer than some other provinces of Afghanistan.',
            maxLine: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: 'Gallary',
            type: 'gallary',
            galleriesList: [
              'assets/cities/herat.jpg',
              'assets/cities/herat.jpg',
              'assets/cities/herat.jpg',
            ],
          ),
          TouristicCityAboutDetailWidget(
            title: 'History',
            type: 'text',
            text:
                'The region of Herat was historically part of Greater Khorasan, which was successively controlled by the Tahirids followed by the Saffarids, Samanids, Ghaznavids, Ghurids, Ilkhanates, Timurids, Safavids, Hotakis, Afsharids, Durranis, Qajarids until it became part of the modern state of Afghanistan.',
            maxLine: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: 'Economy',
            type: 'text',
            text:
                'The province is home to 90% of Afghanistan\'s Saffron production (a \$12 million industry in 2014). In 2015 the World Bank noted that saffron cultivation had provided Herat Province\'s farmers a steady source of income, jobs for both men and women, and a decreased dependency on poppy cultivation.',
            maxLine: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: 'Notable People',
            type: 'notable_people',
            notablePeopleList: [
              {
                'image': 'assets/cities/herat.jpg',
                'name': 'Ahmad',
              },
              {
                'image': 'assets/cities/herat.jpg',
                'name': 'Ahmad',
              },
              {
                'image': 'assets/cities/herat.jpg',
                'name': 'Ahmad',
              }
            ],
          ),
          TouristicCityAboutDetailWidget(
            title: 'Healthcare',
            type: 'text',
            text:
                'The percentage of households with clean drinking water fell from 31% in 2005 to 28% in 2011. The percentage of births attended to by a skilled birth attendant increased from 24% in 2005 to 25% in 2011.',
            maxLine: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: 'District',
            type: 'district',
            districtsList: [
              {
                'image': 'assets/cities/herat.jpg',
                'name': 'herat',
                'population': 10000,
              },
              {
                'image': 'assets/cities/herat.jpg',
                'name': 'herat',
                'population': 10000,
              },
              {
                'image': 'assets/cities/herat.jpg',
                'name': 'herat',
                'population': 10000,
              }
            ],
          ),
          TouristicCityAboutDetailWidget(
            title: 'Education',
            type: 'text',
            text:
                'The overall literacy rate (6+ years of age) fell from 36% in 2005 to 25% in 2011. The overall net enrolment rate (6–13 years of age) fell from 55% in 2005 to 52% in 2011. Herat University is Afghanistan\'s second largest university with over 10,000 students, 14 faculties and 45 departments in 2014.',
            maxLine: 5,
          ),
          TouristicCityAboutDetailWidget(
            title: 'Demographics',
            type: 'text',
            text:
                'As of 2020, the total population of the province is about 2,187,169, the majority of which live in rural parts. According to Afghanistan\'s Ministry of Rural Rehabilitation and Development: Around three quarters (77%) of the population of Hirat lives in rural districts while just under a quarter (23%) lives in urban areas. Around 50% of the population is male and 50% is female. Dari and Pashtu are spoken by 98% of the population and 97.7% of the villages. Languages spoken by the remaining population are Turkmeni and Uzbeki. Hirat province also has a population of Kuchis or nomads whose numbers vary in different seasons. In winter 98,506 individuals, or 4.1% of the overall Kuchi population, stay in Hirat living in 166 communities. Around Three quarters (75%) of these are short-range partially migratory, 12% are long-range partially migratory and 13% are settled. Half of migratory communities of both categories migrate within the winter area, as well as in the summer area. The most important summer areas for the short range migratory Kuchi are Kushki Sangi, Farsi, Adreskan, Kushk Kohna, Kushk Robad, Pashtun Zarghun, Shindand, Guzara, Chisht Sharif, Obeh, Kohistan and Karukh districts of Herat province (in decreasing order of importance). The long-range migratory Kuchi are predominantly fully migratory. Their summer areas are in Ghor province. The Kuchi population in the summer is 112311 individuals.',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
