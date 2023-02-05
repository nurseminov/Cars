import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fullproject1/core/assets/app_images.dart';
import 'package:fullproject1/core/theme/app_colors.dart';
import 'package:fullproject1/core/theme/app_fonts.dart';
import 'package:fullproject1/core/ui/widgets/info_widget.dart';
import 'package:fullproject1/models/car_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({super.key, required this.data});

  final CarModels data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.lightBlue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45)),
            ),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 27,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.white,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.more_vert,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                  Stack(
                    children: [
                      Text(
                        'TIRA',
                        style:
                            AppFonts.w400s160.copyWith(color: AppColors.white),
                      ),
                      Positioned(
                        child: Image.asset(
                          data.image,
                          height: 195,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row(
              children: [
                Text(
                  data.title,
                  style: AppFonts.w400s16,
                ),
                const Spacer(),
                Text(
                  '${data.price}\$',
                  style: AppFonts.w700s12.copyWith(
                    color: AppColors.red,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoWinget(title: 'Transmissoin', subTitle: data.transmission),
              const SizedBox(
                width: 19,
              ),
              InfoWinget(title: 'Speed', subTitle: '${data.speed} kmph'),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'RENDER',
            style: AppFonts.w400s16.copyWith(color: AppColors.darkBlue),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                ),
                Text(
                  data.ownersName,
                  style: AppFonts.w400s12,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () async {
                    launchUrl(
                      Uri.parse('https://flutter.dev'),
                    );
                  },
                  icon: const Icon(Icons.message_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.phone),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
