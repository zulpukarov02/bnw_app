import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_1/app/constants/api_const.dart';
import 'package:step_1/app/theme/app_colors.dart';
import 'package:step_1/app/theme/app_textstyle.dart';
import 'package:step_1/app/utils/custom.dart';
import '../controllers/weather_controller.dart';

const List cities = <String>[
  'bishkek',
  'osh',
  'jalal-abad',
  'karakol',
  'batken',
  'naryn',
  'talas',
  'tokmok'
];

class WeatherView extends GetView<WeatherController> {
  const WeatherView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Weather? weather;
    // ignore: unused_local_variable
    final ctl = controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeatherView'),
        centerTitle: true,
      ),
      body: Container(
        // constraints: BoxConstraints.lerp(asc),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/weather.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onPressed: () {},
                  icon: Icons.near_me,
                ),
                CustomButton(
                    onPressed: () {
                      // showBottom();
                    },
                    icon: Icons.location_city)
              ],
            ),
            Row(
              children: [
                Obx(() {
                  final text = ctl.weather.value != null
                      ? (ctl.weather.value!.main.temp - 273.15).floorToDouble()
                      : "stop";
                  return Text(
                    ("$text"),
                    style: AppTexStyle.temp,
                  );
                }),
                const SizedBox(width: 25),
                Obx(() {
                  return ctl.weather.value != null
                      ? Image.network(
                          ApiConst.getIcon(
                              ctl.weather.value!.weather[0].icon, 4),
                          height: 160,
                          fit: BoxFit.cover,
                        )
                      : const SizedBox(
                          height: 150,
                          width: 150,
                          child: CircularProgressIndicator(),
                        );
                })
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: FittedBox(
                child: Obx(() {
                  final text3 = ctl.weather.value != null
                      ? ctl.weather.value!.weather[0].description
                          .replaceAll(' ', '\n')
                      : "stop";
                  return Text(
                    text3,
                    // "You'all need and".replaceAll(' ', '\n'),
                    style: AppTexStyle.centrtitle,
                    textAlign: TextAlign.right,
                  );
                }),
              ),
            ),
            Expanded(
              child: FittedBox(
                child: Obx(() {
                  final text4 = ctl.weather.value != null
                      ? ctl.weather.value!.sys.country
                      : "stop";
                  return Text(
                    text4,
                    style:
                        const TextStyle(fontSize: 80, color: AppColors.white),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// void showBottom() {
//   showModalBottomSheet<void>(
//     context: context,
//     backgroundColor: Colors.transparent,
//     builder: (BuildContext context) {
//       return Container(
//         height: MediaQuery.of(context).size.height * 0.7,
//         padding: const EdgeInsets.fromLTRB(15, 20, 15, 7),
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 18, 180, 230),
//           border: Border.all(color: AppColors.white),
//           borderRadius: const BorderRadius.only(
//             topRight: Radius.circular(20.0),
//             topLeft: Radius.circular(20.0),
//           ),
//         ),
//         child: ListView.builder(
//           itemCount: cities.length,
//           itemBuilder: (BuildContext context, int index) {
//             final city = cities[index];
//             return Card(
//               child: ListTile(
//                 onTap: () async {
//                   var weather = null;
//                   weather;
//                   ;
//                   get(city);
//                   Navigator.pop(context);
//                 },
//                 title: Text(city),
//               ),
//             );
//           },
//         ),
//       );
//     },
//   );
// }
