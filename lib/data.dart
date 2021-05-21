import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimalInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final Color color;
  final String paragraph;
  final List<String> images;
  final String lifespan;
  final String speed;

  AnimalInfo(
    this.position, {
    required this.name,
    required this.iconImage,
    required this.description,
    required this.color,
    required this.paragraph,
    required this.images,
    required this.lifespan,
    required this.speed,
  });
}

List<AnimalInfo> animallist = [
  AnimalInfo(
    1,
    name: 'Crab',
    color: Colors.redAccent,
    iconImage: 'assets/crab.png',
    description: "crab have not brain as their nervos system",
    paragraph:
        "Crabs are decapod crustaceans which have a very short tail and are covered with a thick shell, or exoskeleton and are armed with a single pair of claws. Crabs are invertebrates (animals without a backbone). Their exoskeleton protects them from predators and provides support for their bodies  ",
    images: [
      'https://images.theconversation.com/files/241716/original/file-20181022-105782-dn5jz9.jpg',
      'https://images.theconversation.com/files/241716/original/file-20181022-105782-dn5jz9.jpg',
      'https://images.theconversation.com/files/241716/original/file-20181022-105782-dn5jz9.jpg',
    ],
    lifespan: '3-4 years',
    speed: 'A mile a DAy',
  ),
  AnimalInfo(
    2,
    name: 'Fish',
    color: Colors.redAccent,
    iconImage: 'assets/f1.png',
    description: "A fish is an animal which lives and breathes in water",
    paragraph:
        "A fish is an animal which lives and breathes in water. All fish are vertebrates (have a backbone) and most breathe through gills and have fins and scales. Fish make up about half of all known vertebrate species. Fish have been on the earth for more than 500 million years   ",
    images: [
      'https://cdn.mos.cms.futurecdn.net/RY2EpSo74hvYXyAVpTN2Gg-970-80.jpg',
      'https://cdn.mos.cms.futurecdn.net/YRh3jS6cJKU9MV7BA2L2Af-970-80.jpg',
      'https://images.unsplash.com/photo-1535591273668-578e31182c4f?ixlib=rb-1.2.1&q=80&fm=jpg',
    ],
    lifespan: 'Wels catfish 60 years',
    speed: '56 km/h',
  ),
  AnimalInfo(
    3,
    name: 'Elephant',
    color: Colors.redAccent,
    iconImage: 'assets/el1.png',
    description: " largest living land animal",
    paragraph:
        "It's all four legs looks like a pillar and two big ears just like a fan. Its eyes are quite small in comparison to the body. It has a long trunk and a short tail. It can pick up a range of things very easily through its trunk such as a small needle and very heavy trees or loads.   ",
    images: [
      'https://c402277.ssl.cf1.rackcdn.com/photos/18366/images/story_full_width/Asian_Elephants_WW252891.jpg',
      'https://c402277.ssl.cf1.rackcdn.com/photos/18363/images/story_full_width/Indian_Elephants_WW185756.jpg?',
      'https://c402277.ssl.cf1.rackcdn.com/photos/18365/images/story_full_width/African_Forest_Elephant_WW187349.jpg',
    ],
    lifespan: '60-70 years',
    speed: '40 km/h',
  ),
  AnimalInfo(
    4,
    name: 'Deer',
    color: Colors.redAccent,
    iconImage: 'assets/d1.png',
    description: " A male deer is called a stag or buck, ",
    paragraph:
        "A deer has four long legs and a very small white tail; it has white circular patches on its skin. Some deer have white linings on their skin. A male deer has horns on its head whereas female deer has no horns on its head. ... Deer is an herbivorous animal; it eats grass, leaves, plants and other herbs of the jungle. ",
    images: [
      'https://ichef.bbci.co.uk/news/976/cpsprodpb/1175E/production/_106481517_gettyimages-172387616.jpg',
      'https://www.nih.gov/sites/default/files/styles/floated_media_breakpoint-large/public/news-events/research-matters/2019/20191022-deer.jpg',
      'https://images.veterinary-practice.com/vet/articles/hind-and-calf.JPG',
    ],
    lifespan: ' 6 to 14 years',
    speed: '50 km/h',
  ),
];
