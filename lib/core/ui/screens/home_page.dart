import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fullproject1/core/assets/app_images.dart';
import 'package:fullproject1/core/theme/app_colors.dart';
import 'package:fullproject1/core/theme/app_fonts.dart';
import 'package:fullproject1/core/ui/screens/cars_screen.dart';
import 'package:fullproject1/core/ui/widgets/car_card.dart';
import 'package:fullproject1/core/ui/widgets/custom_chip.dart';
import 'package:fullproject1/models/car_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double spreadRadius = 2;
double blurRadius = 3;

List<String> lables = [
  'family cars',
  'Cheap cars',
  'Luxury cars',
];
int currentLable = 0;

List<CarModels> data = [
  CarModels(
    image: AppImages.camry,
    price: 500,
    title: 'camry',
    speed: '200',
    ownersName: 'Michael Johns',
    transmission: 'Auto',
  ),
  CarModels(
      image: AppImages.audi,
      price: 300,
      title: 'audy',
      speed: '300',
      ownersName: 'Mr Belton',
      transmission: 'Auto'),
  CarModels(
      image: AppImages.blackCamry,
      price: 350,
      title: 'camry',
      speed: '400',
      ownersName: 'Marlon Brando',
      transmission: 'Auto'),
  CarModels(
      image: AppImages.lambo,
      price: 600,
      title: 'lamborgini',
      speed: '500',
      ownersName: 'Jim Karry',
      transmission: 'Auto'),
  CarModels(
      image: AppImages.yellowlambo,
      price: 630,
      title: 'lamborgini',
      speed: '700',
      ownersName: 'Mattu Mconakhy',
      transmission: 'Auto'),
  CarModels(
      image: AppImages.range,
      price: 400,
      title: 'range rover',
      speed: '200',
      ownersName: 'Snoop Dogg',
      transmission: 'Auto'),
  CarModels(
      image: AppImages.leftrange,
      price: 410,
      title: 'range rover',
      speed: '300',
      ownersName: 'Abduraim Johns',
      transmission: 'Auto'),
  CarModels(
      image: AppImages.tesla,
      price: 700,
      title: 'tesla',
      speed: '400',
      ownersName: 'Keanu Reevs',
      transmission: 'Auto'),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Image.asset(AppImages.bg),
      ),
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Image.asset(AppImages.icon),
          );
        }),
        backgroundColor: AppColors.white,
        elevation: 0,
        actions: const [
          Icon(
            Icons.shopping_cart_checkout_outlined,
            color: AppColors.black,
            size: 30,
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTapDown: (_) {
                  spreadRadius = 0;
                  blurRadius = 0;
                  setState(() {});
                },
                onTapUp: (_) {
                  spreadRadius = 2;
                  blurRadius = 3;
                  setState(() {});
                },
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('This is dialog alert'),
                      content: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: spreadRadius,
                        blurRadius: blurRadius,
                        color: AppColors.black.withOpacity(0.6),
                      ),
                    ],
                  ),
                  child: Image.asset(AppImages.banner),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomChip(
                    lable: lables[0],
                    selected: currentLable == 0,
                    onSelected: (isSelected) {
                      currentLable = 0;
                      setState(() {});
                    },
                  ),
                  CustomChip(
                    lable: lables[1],
                    selected: currentLable == 1,
                    onSelected: (isSelected) {
                      currentLable = 1;
                      setState(() {});
                    },
                  ),
                  CustomChip(
                    lable: lables[2],
                    selected: currentLable == 2,
                    onSelected: (isSelected) {
                      currentLable = 2;
                      setState(() {});
                    },
                  ),
                  const Icon(Icons.search),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Cars Available Near You',
                style: AppFonts.w400s20,
              ),
              Row(
                children: [
                  const Spacer(),
                  Text(
                    'View more',
                    style: AppFonts.w400s11.copyWith(color: AppColors.red),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: data.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return CarCard(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CarsScreen(
                                data: data[index],
                              ),
                            ),
                          );
                        }),
                        image: data[index].image,
                        price: data[index].price,
                        title: data[index].title);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
