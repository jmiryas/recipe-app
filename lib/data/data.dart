import 'package:flutter/widgets.dart';

import '../models/food_model.dart';
import '../models/recipe_model.dart';
import '../models/ingredient_model.dart';

// Bahan Nasi Goreng

List<IngredientModel> _nasiGorengOmelette = [
  IngredientModel(
      name: "Nasi Putih",
      imageUrl: "images/nasi_putih.jpg",
      takaran: "400 gram"),
  IngredientModel(
      name: "Telur Ayam",
      imageUrl: "images/telur_ayam.jpg",
      takaran: "2 butir"),
  IngredientModel(
      name: "Minyak", imageUrl: "images/minyak_goreng.jpg", takaran: "2 sdm"),
  IngredientModel(
      name: "Blue Band", imageUrl: "images/blue_band.jpg", takaran: "1 sdt"),
  IngredientModel(
      name: "Royco Bumbu Komplit Nasi Goreng",
      imageUrl: "images/royco_bumbu_komplit_nasi_goreng.png",
      takaran: "1 bungkus")
];

List<IngredientModel> _nasiGorengJamur = [
  IngredientModel(
      name: "Nasi Putih",
      imageUrl: "images/nasi_putih.jpg",
      takaran: "600 gram"),
  IngredientModel(
      name: "Daging Ayam Giling",
      imageUrl: "images/daging_ayam_giling.png",
      takaran: "100 gram"),
  IngredientModel(
      name: "Telur Ayam",
      imageUrl: "images/telur_ayam.jpg",
      takaran: "2 butir"),
  IngredientModel(
      name: "Jamur Kancing ",
      imageUrl: "images/jamur_kancing.jpeg",
      takaran: "100 gram"),
  IngredientModel(
      name: "Royco Bumbu Komplit Nasi Goreng",
      imageUrl: "images/royco_bumbu_komplit_nasi_goreng.png",
      takaran: "1 bungkus"),
  IngredientModel(
      name: "Minyak", imageUrl: "images/minyak_goreng.jpg", takaran: "2 sdm"),
  IngredientModel(
      name: "Margarin", imageUrl: "images/margarin.jpg", takaran: "1 sdm"),
];

// Bahan Jamur

List<IngredientModel> _seiJamurTempe = [
  IngredientModel(
      name: "Bawang Putih",
      imageUrl: "images/bawang_putih.jpg",
      takaran: "5 siung"),
  IngredientModel(
      name: "Royco Kaldu Jamur",
      imageUrl: "images/royco_kaldu_jamur.jpg",
      takaran: "1 sdm"),
  IngredientModel(name: "Air", imageUrl: "images/air.jpg", takaran: "100 ml"),
  IngredientModel(
      name: "Tempe", imageUrl: "images/tempe.jpg", takaran: "100 g"),
  IngredientModel(
      name: "Jamur Enoki",
      imageUrl: "images/jamur_enoki.jpg",
      takaran: "jamur_enoki.jpg"),
  IngredientModel(
      name: "Jamur Tiram",
      imageUrl: "images/jamur_tiram.jpg",
      takaran: "100 g"),
  IngredientModel(
      name: "Minyak", imageUrl: "images/minyak_goreng.jpg", takaran: "2 sdm"),
  IngredientModel(
      name: "Jeruk Purut",
      imageUrl: "images/jeruk_purut.jpg",
      takaran: "1 buah"),
  IngredientModel(
      name: "Terasi", imageUrl: "images/terasi.jpg", takaran: "1 sdt"),
  IngredientModel(
      name: "Bawang Merah",
      imageUrl: "images/bawang_merah.jpg",
      takaran: "5 butir"),
  IngredientModel(
      name: "Daun Kemangi", imageUrl: "images/kemangi.jpg", takaran: "2 sdm"),
  IngredientModel(
      name: "Daun Ketumbar",
      imageUrl: "images/ketumbar.jpg",
      takaran: "1 ikat"),
  IngredientModel(
      name: "Tomat", imageUrl: "images/tomat.jpg", takaran: "1 buah"),
  IngredientModel(name: "Gula", imageUrl: "images/gula.jpg", takaran: "1 sdt"),
];

// List masakan nasi goreng

List<FoodModel> _foodListNasiGoreng = [
  FoodModel(
      name: "Nasi Goreng Omelette",
      imageUrl: "images/nasi_goreng_omelette.jpg",
      serving: 4,
      ingredientList: _nasiGorengOmelette),
  FoodModel(
      name: "Nasi Goreng Jamur",
      imageUrl: "images/nasi_goreng_jamur.jpg",
      serving: 4,
      ingredientList: _nasiGorengJamur),
];

// List masakan jamur

List<FoodModel> _foodListSeiJamur = [
  FoodModel(
      name: "Sei Jamur Tempe",
      imageUrl: "images/sei_jamur_tempe.jpg",
      serving: 4,
      ingredientList: _seiJamurTempe)
];

// Resep nasi goreng

RecipeModel _resepNasiGoreng = RecipeModel(
    name: "Nasi Goreng",
    imageUrl: "images/nasi_goreng_omelette.jpg",
    recipeList: _foodListNasiGoreng);

// Resep jamur

RecipeModel _resepJamur = RecipeModel(
    name: "Jamur",
    imageUrl: "images/sei_jamur_tempe.jpg",
    recipeList: _foodListSeiJamur);

final foodListHome = [_resepNasiGoreng, _resepJamur];

// Background image untuk welcome screen.

final welcomeScreenImage = AssetImage("images/wallpaper.jpg");

// Food list

final List<String> foodList = [
  "All",
  "Nasi Goreng",
  "Jamur",
  "Sushi",
  "Burger",
  "Batagor",
  "Papeda",
  "Cireng",
  "Sempol",
  "Bubur Ayam"
];
