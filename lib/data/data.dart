import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vacation_mobile_ui/models/hotel.dart';
import 'package:vacation_mobile_ui/models/model.dart';
import 'package:vacation_mobile_ui/widgets/to_know.dart';

import 'experience.dart';

List<Vacation> vacationList = [
  Vacation(
      city: "Venice", country: "Italy", imageUrl: "https://s8.uupload.ir/files/1_tb2z.jpg"),
  Vacation(city: "London", country: "United Kingdom", imageUrl: "https://s8.uupload.ir/files/5_y1be.jpg"),
  Vacation(
      city: "Berlin",
      country: "Germany",
      imageUrl: "https://s8.uupload.ir/files/2_pkoz.jpg"),
  Vacation(
    city: "Paris",
    country: "France",
    imageUrl: "https://s8.uupload.ir/files/3_1nqj.jpg",
  ),
  Vacation(
    imageUrl: "https://s8.uupload.ir/files/29_t0k0.jpg",
    city: "Barcelona",
    country: "Spain ",
  ),
  Vacation(imageUrl: "https://s8.uupload.ir/files/6_ho8b.jpg", city: "Milan", country: "Italy"),
];

List<ToKnow> toKnowList = [
  ToKnow(title: "TIME TO VISIT", answer: "Spring",icon: Iconsax.calendar),
  ToKnow(title: "TRANSPORT", answer: "Subway",icon: FrinoIcons.f_train),
  ToKnow(title: "WEATHER", answer: "62 F",icon: FrinoIcons.f_cloud_data),
  ToKnow(title: "LANGUAGE", answer: "English",icon: Iconsax.language_circle),
  ToKnow(title: "ELECTRIC", answer: "Type G",icon: Iconsax.electricity),
  ToKnow(title: "CURRENCY", answer: "Pound",icon: Iconsax.money_change4)
];

List<Experience> experienceList = [
  Experience(imageUrl: "https://s8.uupload.ir/files/10_nu0h.jpg",location: "British Museum", title: "The West End",),
  Experience(imageUrl: "https://s8.uupload.ir/files/11_uo9d.jpg",location: "Silent Disco Tour", title: "Get Remembered"),
  Experience(imageUrl: "https://s8.uupload.ir/files/13_rww.jpg",location: "Buckingham Palace", title: "Royal Residences"),
  Experience(imageUrl: "https://s8.uupload.ir/files/12_jyx8.jpg",location: "Tower Bridge", title: "Drawbridge")
];

List<Hotel> hotelList = [
  Hotel(imageUrl: "https://s8.uupload.ir/files/7_fic2.jpg",
      name: "Haymarket Hotel,\nFirmdale Hotels",
      detail: "Located in The West\nEnd _ 0.39 miles  from\ncity center"),
  Hotel(imageUrl: "https://s8.uupload.ir/files/8_9u00.jpg",
      name: "The Beaumont Hotel",
      detail: "Located in The West\nEnd _ 13.4 miles  from\ncity center"),
  Hotel(imageUrl: "https://s8.uupload.ir/files/9_v9b1.jpg",
      name: "Rosewood London",
      detail: "Located in The West\nEnd _ 1.31 miles  from\ncity center"),
];

List<String> photosList = [
'https://s8.uupload.ir/files/14_vydj.jpg',
'https://s8.uupload.ir/files/15_8vcx.jpg',
'https://s8.uupload.ir/files/16_femp.jpg',
'https://s8.uupload.ir/files/17_vk67.jpg',
'https://s8.uupload.ir/files/18_fj2i.jpeg',
'https://s8.uupload.ir/files/19_iyjx.png',
'https://s8.uupload.ir/files/20_fw5o.jpg',
'https://s8.uupload.ir/files/21_kiai.jpg',
'https://s8.uupload.ir/files/22_2dyu.jpg',
'https://s8.uupload.ir/files/23_1996.jpg',
'https://s8.uupload.ir/files/24_4oze.jpg',
'https://s8.uupload.ir/files/25_7n2l.jpg',
'https://s8.uupload.ir/files/26_mmye.jpg',
'https://s8.uupload.ir/files/27_nhgt.jpg',
'https://s8.uupload.ir/files/28_1zoy.jpg',
];

