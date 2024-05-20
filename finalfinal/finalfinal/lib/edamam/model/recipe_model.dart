// class RecipeModel {
//   int? id;
//   String title;
//   int cookingTime;
//   int servings;
//   String imgPath;
//   bool favourite;
//   List<bool> takedingredients;
//   List<String> ingredients;
//   List<String> preparation;
//   List<String> cooking;

//   RecipeModel({
//     this.id,
//     this.favourite = false,
//     required this.title,
//     required this.cookingTime,
//     required this.servings,
//     required this.imgPath,
//     required this.ingredients,
//     required this.preparation,
//     required this.cooking,
//   }) : takedingredients = List<bool>.filled(ingredients.length, false);
// }




// {
//   food: {
//     foodId: food_bmyxrshbfao9s1amjrvhoauob6mo, 
//     label: Chicken, 
//     knownAs: chicken, 
//     nutrients: {
//       ENERC_KCAL: 215, 
//       PROCNT: 18.6, 
//       FAT: 15.1, 
//       CHOCDF: 0, 
//       FIBTG: 0
//     }, 
//     category: Generic foods, 
//     categoryLabel: food, 
//     image: https://www.edamam.com/food-img/d33/d338229d774a743f7858f6764e095878.jpg
//   },
//   measures: [
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_serving, 
//       label: Serving, 
//       weight: 250
//     }, 
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_unit, 
//       label: Whole, 
//       weight: 1200, 
//       qualified: [
//         {
//           qualifiers: [
//             {
//               uri: http://www.edamam.com/ontologies/edamam.owl#Qualifier_small, 
//               label: small
//             }
//           ], 
//           weight: 1000
//         }, 
//         {
//           qualifiers: [
//             {
//               uri: http://www.edamam.com/ontologies/edamam.owl#Qualifier_boneless, 
//               label: boneless
//             }
//           ],
//           weight: 920
//         }
//       ]
//     }, 
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_chicken, 
//       label: Chicken, 
//       weight: 1200, 
//       qualified: [
//         {
//           qualifiers: [
//             {
//               uri: http://www.edamam.com/ontologies/edamam.owl#Qualifier_boneless, 
//               label: boneless
//             }
//           ], 
//           weight: 920
//         }
//       ]
//     }, 
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_breast, 
//       label: Breast, 
//       weight: 196
//     }, 
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_piece, 
//       label: Piece, 
//       weight: 89.4
//     }, 
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_slice, 
//       label: Slice, 
//       weight: 28.3
//     }, 
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_gram, 
//       label: Gram, 
//       weight: 1
//     }, 
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_ounce, 
//       label: Ounce, 
//       weight: 28.349523125
//     }, 
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_pound, 
//       label: Pound, 
//       weight: 453.59237
//     }, 
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_kilogram, 
//       label: Kilogram, 
//       weight: 1000
//     }, 
//     {
//       uri: http://www.edamam.com/ontologies/edamam.owl#Measure_cup, 
//       label: Cup, 
//       weight: 140
//     }
//   ]
// }






//FOR SEARCH

// {
//   recipe: {
//     uri: http://www.edamam.com/ontologies/edamam.owl#recipe_8d3e4b9299664a1ca8e6f5bdb8532300, 
//     label: Rotisserie Chicken Recipe, 
//     image: https://edamam-product-images.s3.amazonaws.com/web-img/88e/88edb31264dc1e58b37c2fec3f99a244.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEJT%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCVohNIbL%2FqiQmMeQ6Mz7fX9nnYY7MVT4DOtf%2B9ipnBegIhAIFeHvJCH0Kg88%2FRxYXVaY8B%2B4S3wO1pJuFvc%2F5uWBBBKsIFCP3%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMMTg3MDE3MTUwOTg2IgwxjSXbV0fMF66NZSkqlgWfIeHZCRu1S8HgZIjosY27Zq3vYzaJrRfEQU7i%2B7edqhRknCSvPK7q2pKxF5W6s23t3T3MOWiFsr0EzN%2Fudy772XEWajp%2Boxsaxn5D1rXXxfTjBYOnGrdEDiEC3gpPN6V%2FVr85Rd6wCFCPYOdvseZ58%2FFKSZDi00WqDCAc%2BCN0JlnCOg8iwg7ljYPUMyXE0YLfv7PC1fSnTQCTG7ak%2FpOFAcEjoUIvUPbVjCx35nBU2pixfrNlMGM8af2X4yblqqQleuqD1nheq9muB6LUKBGwcELWkbI7vKCp1OzgMG3yb8eU9m8s%2FWqPUaaTNPbQfApnaMlc6tT5TYczTcW9d%2Fu3dc2YFczME91rGWY1ppHYZaVhhF7FBZ%2BNZygFeLbt2RWXVXfF7gHpyIjnYT60cnB2w%2FFbqxjT78t6Aw2o3W3SKp88RISJDYsJhFjwBgwZbOmcqFxopKoNmBn%2F4C8fD3BFxeXEJIyluOAUNsVjW6%2BnGJJkKNTB16%2BDNqtXcx0h3sE%2FpNKxIlKa22xYTFllOOJY95qKjoPOUBakPeu5fUxz8cfylngW3AQ0LhDthAj8L28QmxTjB6hrgOdwntdl75Al04LonPef%2BMdctbSeYq%2FHA7WwQ3iCqBAMUdlmwg0T77ShPKPFjMJYYVfj179sBBzKyx7FkOL%2B4e4uTut2NXR1biW52uOEEdkb8xtZ9KUZVm6VDJZDgpFt%2FaQbd1%2Bxx4uce2mDuQlz5G4oCgocnKb1QJ7T%2F2SuqLy8CyHAUnl%2Bfn8BpePRf2H3Bo%2Fh3M3l1FD86j9FFJNJuDDk37Y4mw5gFDE%2Fu%2BB38T1WQEWJMxQcQqxtOz7ezvzLDVQlttCOIJ0Q1ppy3JpxSVzWbJWlociflPUfJWi%2FdDDB5qWyBjqwAaHJObjCbpl%2FxvkA7y4aPwSrXE7tjYPnJbdyvqVkPH1vg%2B7lBvWaqp2ZZ%2B2RQ7zzhC0dcqV5YzISq19hNHtpV7WhIhX8UU5krNePmsgeCFsaQZ79UzExh7H5Ez%2FBaTRvi3i7kTehLd6pM%2FJ0wj2eOQXHNAmX4Rp7%2FLSU0ICjtVoBF%2FH7uh1yVCXXKPknTiE0qUYw1rdrOdTfJMcSsb4frvHE5d4dYAjU3TxBF1Odhsjb&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240519T043025Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFAAHVK2UN%2F20240519%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=4fcc1635b44ab77217645900be3d9100c859a02c69e66e440ce69e193ec1a4d6, 
//     images: {
//       THUMBNAIL: {
//         url: https://edamam-product-images.s3.amazonaws.com/web-img/88e/88edb31264dc1e58b37c2fec3f99a244-s.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEJT%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCVohNIbL%2FqiQmMeQ6Mz7fX9nnYY7MVT4DOtf%2B9ipnBegIhAIFeHvJCH0Kg88%2FRxYXVaY8B%2B4S3wO1pJuFvc%2F5uWBBBKsIFCP3%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMMTg3MDE3MTUwOTg2IgwxjSXbV0fMF66NZSkqlgWfIeHZCRu1S8HgZIjosY27Zq3vYzaJrRfEQU7i%2B7edqhRknCSvPK7q2pKxF5W6s23t3T3MOWiFsr0EzN%2Fudy772XEWajp%2Boxsaxn5D1rXXxfTjBYOnGrdEDiEC3gpPN6V%2FVr85Rd6wCFCPYOdvseZ58%2FFKSZDi00WqDCAc%2BCN0JlnCOg8iwg7ljYPUMyXE0YLfv7PC1fSnTQCTG7ak%2FpOFAcEjoUIvUPbVjCx35nBU2pixfrNlMGM8af2X4yblqqQleuqD1nheq9muB6LUKBGwcELWkbI7vKCp1OzgMG3yb8eU9m8s%2FWqPUaaTNPbQfApnaMlc6tT5TYczTcW9d%2Fu3dc2YFczME91rGWY1ppHYZaVhhF7FBZ%2BNZygFeLbt2RWXVXfF7gHpyIjnYT60cnB2w%2FFbqxjT78t6Aw2o3W3SKp88RISJDYsJhFjwBgwZbOmcqFxopKoNmBn%2F4C8fD3BFxeXEJIyluOAUNsVjW6%2BnGJJkKNTB16%2BDNqtXcx0h3sE%2FpNKxIlKa22xYTFllOOJY95qKjoPOUBakPeu5fUxz8cfylngW3AQ0LhDthAj8L28QmxTjB6hrgOdwntdl75Al04LonPef%2BMdctbSeYq%2FHA7WwQ3iCqBAMUdlmwg0T77ShPKPFjMJYYVfj179sBBzKyx7FkOL%2B4e4uTut2NXR1biW52uOEEdkb8xtZ9KUZVm6VDJZDgpFt%2FaQbd1%2Bxx4uce2mDuQlz5G4oCgocnKb1QJ7T%2F2SuqLy8CyHAUnl%2Bfn8BpePRf2H3Bo%2Fh3M3l1FD86j9FFJNJuDDk37Y4mw5gFDE%2Fu%2BB38T1WQEWJMxQcQqxtOz7ezvzLDVQlttCOIJ0Q1ppy3JpxSVzWbJWlociflPUfJWi%2FdDDB5qWyBjqwAaHJObjCbpl%2FxvkA7y4aPwSrXE7tjYPnJbdyvqVkPH1vg%2B7lBvWaqp2ZZ%2B2RQ7zzhC0dcqV5YzISq19hNHtpV7WhIhX8UU5krNePmsgeCFsaQZ79UzExh7H5Ez%2FBaTRvi3i7kTehLd6pM%2FJ0wj2eOQXHNAmX4Rp7%2FLSU0ICjtVoBF%2FH7uh1yVCXXKPknTiE0qUYw1rdrOdTfJMcSsb4frvHE5d4dYAjU3TxBF1Odhsjb&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240519T043025Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFAAHVK2UN%2F20240519%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=657ea1d6b1a5ffd32037a04f727c5da639c817be2c2b8ed8735c68241e403107, 
//         width: 100, 
//         height: 100
//       }, 
//       SMALL: {
//         url: https://edamam-product-images.s3.amazonaws.com/web-img/88e/88edb31264dc1e58b37c2fec3f99a244-m.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEJT%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCVohNIbL%2FqiQmMeQ6Mz7fX9nnYY7MVT4DOtf%2B9ipnBegIhAIFeHvJCH0Kg88%2FRxYXVaY8B%2B4S3wO1pJuFvc%2F5uWBBBKsIFCP3%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMMTg3MDE3MTUwOTg2IgwxjSXbV0fMF66NZSkqlgWfIeHZCRu1S8HgZIjosY27Zq3vYzaJrRfEQU7i%2B7edqhRknCSvPK7q2pKxF5W6s23t3T3MOWiFsr0EzN%2Fudy772XEWajp%2Boxsaxn5D1rXXxfTjBYOnGrdEDiEC3gpPN6V%2FVr85Rd6wCFCPYOdvseZ58%2FFKSZDi00WqDCAc%2BCN0JlnCOg8iwg7ljYPUMyXE0YLfv7PC1fSnTQCTG7ak%2FpOFAcEjoUIvUPbVjCx35nBU2pixfrNlMGM8af2X4yblqqQleuqD1nheq9muB6LUKBGwcELWkbI7vKCp1OzgMG3yb8eU9m8s%2FWqPUaaTNPbQfApnaMlc6tT5TYczTcW9d%2Fu3dc2YFczME91rGWY1ppHYZaVhhF7FBZ%2BNZygFeLbt2RWXVXfF7gHpyIjnYT60cnB2w%2FFbqxjT78t6Aw2o3W3SKp88RISJDYsJhFjwBgwZbOmcqFxopKoNmBn%2F4C8fD3BFxeXEJIyluOAUNsVjW6%2BnGJJkKNTB16%2BDNqtXcx0h3sE%2FpNKxIlKa22xYTFllOOJY95qKjoPOUBakPeu5fUxz8cfylngW3AQ0LhDthAj8L28QmxTjB6hrgOdwntdl75Al04LonPef%2BMdctbSeYq%2FHA7WwQ3iCqBAMUdlmwg0T77ShPKPFjMJYYVfj179sBBzKyx7FkOL%2B4e4uTut2NXR1biW52uOEEdkb8xtZ9KUZVm6VDJZDgpFt%2FaQbd1%2Bxx4uce2mDuQlz5G4oCgocnKb1QJ7T%2F2SuqLy8CyHAUnl%2Bfn8BpePRf2H3Bo%2Fh3M3l1FD86j9FFJNJuDDk37Y4mw5gFDE%2Fu%2BB38T1WQEWJMxQcQqxtOz7ezvzLDVQlttCOIJ0Q1ppy3JpxSVzWbJWlociflPUfJWi%2FdDDB5qWyBjqwAaHJObjCbpl%2FxvkA7y4aPwSrXE7tjYPnJbdyvqVkPH1vg%2B7lBvWaqp2ZZ%2B2RQ7zzhC0dcqV5YzISq19hNHtpV7WhIhX8UU5krNePmsgeCFsaQZ79UzExh7H5Ez%2FBaTRvi3i7kTehLd6pM%2FJ0wj2eOQXHNAmX4Rp7%2FLSU0ICjtVoBF%2FH7uh1yVCXXKPknTiE0qUYw1rdrOdTfJMcSsb4frvHE5d4dYAjU3TxBF1Odhsjb&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240519T043025Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFAAHVK2UN%2F20240519%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=d4d306b87e06b15629f38910a03fdd14dfdc64d8f7a10846431c7707f213d2de, 
//         width: 200, 
//         height: 200
//       }, 
//       REGULAR: {
//         url: https://edamam-product-images.s3.amazonaws.com/web-img/88e/88edb31264dc1e58b37c2fec3f99a244.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEJT%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCVohNIbL%2FqiQmMeQ6Mz7fX9nnYY7MVT4DOtf%2B9ipnBegIhAIFeHvJCH0Kg88%2FRxYXVaY8B%2B4S3wO1pJuFvc%2F5uWBBBKsIFCP3%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMMTg3MDE3MTUwOTg2IgwxjSXbV0fMF66NZSkqlgWfIeHZCRu1S8HgZIjosY27Zq3vYzaJrRfEQU7i%2B7edqhRknCSvPK7q2pKxF5W6s23t3T3MOWiFsr0EzN%2Fudy772XEWajp%2Boxsaxn5D1rXXxfTjBYOnGrdEDiEC3gpPN6V%2FVr85Rd6wCFCPYOdvseZ58%2FFKSZDi00WqDCAc%2BCN0JlnCOg8iwg7ljYPUMyXE0YLfv7PC1fSnTQCTG7ak%2FpOFAcEjoUIvUPbVjCx35nBU2pixfrNlMGM8af2X4yblqqQleuqD1nheq9muB6LUKBGwcELWkbI7vKCp1OzgMG3yb8eU9m8s%2FWqPUaaTNPbQfApnaMlc6tT5TYczTcW9d%2Fu3dc2YFczME91rGWY1ppHYZaVhhF7FBZ%2BNZygFeLbt2RWXVXfF7gHpyIjnYT60cnB2w%2FFbqxjT78t6Aw2o3W3SKp88RISJDYsJhFjwBgwZbOmcqFxopKoNmBn%2F4C8fD3BFxeXEJIyluOAUNsVjW6%2BnGJJkKNTB16%2BDNqtXcx0h3sE%2FpNKxIlKa22xYTFllOOJY95qKjoPOUBakPeu5fUxz8cfylngW3AQ0LhDthAj8L28QmxTjB6hrgOdwntdl75Al04LonPef%2BMdctbSeYq%2FHA7WwQ3iCqBAMUdlmwg0T77ShPKPFjMJYYVfj179sBBzKyx7FkOL%2B4e4uTut2NXR1biW52uOEEdkb8xtZ9KUZVm6VDJZDgpFt%2FaQbd1%2Bxx4uce2mDuQlz5G4oCgocnKb1QJ7T%2F2SuqLy8CyHAUnl%2Bfn8BpePRf2H3Bo%2Fh3M3l1FD86j9FFJNJuDDk37Y4mw5gFDE%2Fu%2BB38T1WQEWJMxQcQqxtOz7ezvzLDVQlttCOIJ0Q1ppy3JpxSVzWbJWlociflPUfJWi%2FdDDB5qWyBjqwAaHJObjCbpl%2FxvkA7y4aPwSrXE7tjYPnJbdyvqVkPH1vg%2B7lBvWaqp2ZZ%2B2RQ7zzhC0dcqV5YzISq19hNHtpV7WhIhX8UU5krNePmsgeCFsaQZ79UzExh7H5Ez%2FBaTRvi3i7kTehLd6pM%2FJ0wj2eOQXHNAmX4Rp7%2FLSU0ICjtVoBF%2FH7uh1yVCXXKPknTiE0qUYw1rdrOdTfJMcSsb4frvHE5d4dYAjU3TxBF1Odhsjb&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240519T043025Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFAAHVK2UN%2F20240519%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=4fcc1635b44ab77217645900be3d9100c859a02c69e66e440ce69e193ec1a4d6, 
//         width: 300, 
//         height: 300
//       }
//     }, 
//     source: Serious Eats, 
//     url: https://www.seriouseats.com/basic-rotisserie-chicken-recipe, 
//     shareAs: http://www.edamam.com/recipe/rotisserie-chicken-recipe-8d3e4b9299664a1ca8e6f5bdb8532300/chicken, 
//     yield: 4, 
//     dietLabels: [Low-Carb], 
//     healthLabels: [Sugar-Conscious, Keto-Friendly, Gluten-Free, Wheat-Free, Egg-Free, Peanut-Free, Tree-Nut-Free, Soy-Free, Fish-Free, Shellfish-Free, Pork-Free, Red-Meat-Free, Crustacean-Free, Celery-Free, Mustard-Free, Sesame-Free, Lupine-Free, Mollusk-Free, Alcohol-Free, Sulfite-Free, FODMAP-Free, Immuno-Supportive], 
//     cautions: [], 
//     ingredientLines: [1 whole chicken, about 4 pounds, 2 tablespoons kosher salt, 2 tablespoons butter, melted], 
//     ingredients: [
//       {
//         text: 1 whole chicken, 
//         about 4 pounds, 
//         quantity: 4, 
//         measure: pound, 
//         food: chicken, 
//         weight: 1814.36948, 
//         foodCategory: Poultry, 
//         foodId: food_bmyxrshbfao9s1amjrvhoauob6mo, 
//         image: https://www.edamam.com/food-img/d33/d338229d774a743f7858f6764e095878.jpg
//       }, 
//       {
//         text: 2 tablespoons kosher salt, 
//         quantity: 2, 
//         measure: tablespoon, 
//         food: kosher salt, 
//         weight: 29.124999999507587, 
//         foodCategory: Condiments and sauces, 
//         foodId: food_a1vgrj1bs8rd1majvmd9ubz8ttkg, 
//         image: https://www.edamam.com/food-img/694/6943ea510918c6025795e8dc6e6eaaeb.jpg
//       }, 
//       {
//         text: 2 tablespoons butter,
//         melted, 
//         quantity: 2, 
//         measure: tablespoon, 
//         food: butter, 
//         weight: 28.4, 
//         foodCategory: Dairy, 
//         foodId: food_awz3iefajbk1fwahq9logahmgltj, 
//         image: https://www.edamam.com/food-img/713/71397239b670d88c04faa8d05035cab4.jpg
//         }
//       ], 
//       calories: 2856.23617976, 
//       totalCO2Emissions: 18635.874942599155, 
//       co2EmissionsClass: G, 
//       totalWeight: 1851.5802008708001, 
//       totalTime: 540, 
//       cuisineType: [mexican], 
//       mealType: [lunch/dinner], 
//       dishType: [starter], 
//       totalNutrients: {
//         ENERC_KCAL: {
//           label: Energy, 
//           quantity: 2856.23617976, 
//           unit: kcal
//         }, 
//         FAT: {
//           label: Fat, 
//           quantity: 209.33185820639997, 
//           unit: g
//         }, 
//         FASAT: {
//           label: Saturated, 
//           quantity: 67.51754071983999, 
//           unit: g
//         }, 
//         FATRN: {
//           label: Trans, 
//           quantity: 1.196758109008, 
//           unit: g
//         }, 
//         FAMS: {
//           label: Monounsaturated, 
//           quantity: 83.63292577536, 
//           unit: g
//         }, 
//         FAPU: {
//           label: Polyunsaturated, 
//           quantity: 40.70565125872, 
//           unit: g
//         }, 
//         CHOCDF: {
//           label: Carbs, 
//           quantity: 0.017039999999999996, 
//           unit: g
//         }, 
//         CHOCDF.net: {
//           label: Carbohydrates (net), 
//           quantity: 0.017039999999999996, 
//           unit: g
//         }, 
//         FIBTG: {
//           label: Fiber, 
//           quantity: 0, 
//           unit: g
//         }, 
//         SUGAR: {
//           label: Sugars, 
//           quantity: 0.017039999999999996, 
//           unit: g
//         },
//         PROCNT: {
//           label: Protein, 
//           quantity: 229.7228518304, 
//           unit: g
//         }, 
//         CHOLE: {
//           label: Cholesterol, 
//           quantity: 986.3884347999999, 
//           unit: mg
//         }, 
//         NA: {
//           label: Sodium, 
//           quantity: 4285.3235703504, 
//           unit: mg
//         }, 
//         CA: {
//           label: Calcium, 
//           quantity: 144.645410112992, 
//           unit: mg
//         }, 
//         MG: {
//           label: Magnesium, 
//           quantity: 247.410356488708, 
//           unit: mg
//         }, 
//         K: {
//           label: Potassium, 
//           quantity: 2339.3485133656636, 
//           unit: mg
//         }, 
//         FE: {
//           label: Iron, 
//           quantity: 11.13869659647364, 
//           unit: mg
//         }, 
//         ZN: {
//           label: Zinc, 
//           quantity: 16.1967740487108, 
//           unit: mg
//         }, 
//         P: {
//           label: Phosphorus, 
//           quantity: 1820.4597322079999,
//           unit: mg
//         }, 
//         VITA_RAE: {
//           label: Vitamin A, 
//           quantity: 700.1022110239999, 
//           unit: Âµg
//         }, 
//         VITC: {
//           label: Vitamin C, 
//           quantity: 19.7403399424, 
//           unit: mg
//         }, 
//         THIA: {
//           label: Thiamin (B1), 
//           quantity: 0.7416827478399999, 
//           unit: mg
//         }, 
//         RIBF: {
//           label: Riboflavin (B2),
//           quantity: 1.49018149568, 
//           unit: mg
//         }, 
//         NIA: {
//           label: Niacin (B3), 
//           quantity: 83.90837275519999, 
//           unit: mg
//         }, 
//         VITB6A: {
//           label: Vitamin B6, 
//           quantity: 4.3190513624, 
//           unit: mg
//         }, 
//         FOLDFE: {
//           label: Folate equivalent (total), 
//           quantity: 74.878274784, 
//           unit: Âµg
//         }, 
//         FOLFD: {
//           label: Folate (food), 
//           quantity: 74.878274784, 
//           unit: Âµg
//         }, 
//         FOLAC: {
//           label: Folic acid, 
//           quantity: 0, 
//           unit: Âµg
//         }, 
//         VITB12: {
//           label: Vitamin B12, 
//           quantity: 3.87297086384, 
//           unit: Âµg
//         }, 
//         VITD: {
//           label: Vitamin D, 
//           quantity: 2.4675424928, 
//           unit: Âµg
//         }, 
//         TOCPHA: {
//           label: Vitamin E, 
//           quantity: 4.3601937392, 
//           unit: mg
//         }, 
//         VITK1: {
//           label: Vitamin K, 
//           quantity: 20.494568695999998, 
//           unit: Âµg
//         }, 
//         WATER: {
//           label: Water, 
//           quantity: 818.9074440657416, 
//           unit: g
//         }
//       }, 
//       totalDaily: {
//         ENERC_KCAL: {
//           label: Energy, 
//           quantity: 142.811808988, 
//           unit: %
//         }, 
//         FAT: {
//           label: Fat, 
//           quantity: 322.0490126252307, 
//           unit: %
//         }, 
//         FASAT: {
//           label: Saturated, 
//           quantity: 337.5877035991999, 
//           unit: %
//         }, 
//         CHOCDF: {
//           label: Carbs, 
//           quantity: 0.005679999999999998, 
//           unit: %
//         }, 
//         FIBTG: {
//           label: Fiber, 
//           quantity: 0, 
//           unit: %
//         }, 
//         PROCNT: {
//           label: Protein, 
//           quantity: 459.4457036608, 
//           unit: %
//         }, 
//         CHOLE: {
//           label: Cholesterol, 
//           quantity: 328.7961449333333, 
//           unit: %
//         }, 
//         NA: {
//           label: Sodium, 
//           quantity: 178.5551487646, 
//           unit: %
//         }, 
//         CA: {
//           label: Calcium, 
//           quantity: 14.464541011299202, 
//           unit: %
//         }, 
//         MG: {
//           label: Magnesium, 
//           quantity: 58.90722773540667, 
//           unit: %
//         }, 
//         K: {
//           label: Potassium, 
//           quantity: 49.773372624801354, 
//           unit: %
//         }, 
//         FE: {
//           label: Iron, 
//           quantity: 61.88164775818689, 
//           unit: %
//         }, 
//         ZN: {
//           label: Zinc, 
//           quantity: 147.24340044282545, 
//           unit: %
//         }, 
//         P: {
//           label: Phosphorus, 
//           quantity: 260.06567602971427, 
//           unit: %
//         }, 
//         VITA_RAE: {
//           label: Vitamin A, 
//           quantity: 77.7891345582222, 
//           unit: %
//         }, 
//         VITC: {
//           label: Vitamin C, 
//           quantity: 21.93371104711111, 
//           unit: %
//         }, 
//         THIA: {
//           label: Thiamin (B1), 
//           quantity: 61.80689565333333,
//           unit: %
//         }, 
//         RIBF: {
//           label: Riboflavin (B2), 
//           quantity: 114.62934582153845,
//           unit: %
//         }, 
//         NIA: {
//           label: Niacin (B3), 
//           quantity: 524.42732972, 
//           unit: %
//         }, 
//         VITB6A: {
//           label: Vitamin B6, 
//           quantity: 332.23472018461536, 
//           unit: %
//         }, 
//         FOLDFE: {
//           label: Folate equivalent (total), 
//           quantity: 18.719568696, 
//           unit: %
//         }, 
//         VITB12: {
//           label: Vitamin B12, 
//           quantity: 161.37378599333334, 
//           unit: %
//         }, 
//         VITD: {
//           label: Vitamin D, 
//           quantity: 16.45028328533333, 
//           unit: %
//         }, 
//         TOCPHA: {
//           label: Vitamin E, 
//           quantity: 29.06795826133333, 
//           unit: %
//         }, 
//         VITK1: {
//           label: Vitamin K, 
//           quantity: 17.078807246666663, 
//           unit: %
//         }
//       }, 
//       digest: [
//         {
//           label: Fat, 
//           tag: FAT, 
//           schemaOrgTag: fatContent, 
//           total: 209.33185820639997, 
//           hasRDI: true, 
//           daily: 322.0490126252307, 
//           unit: g, 
//           sub: [
//             {
//               label: Saturated, 
//               tag: FASAT, 
//               schemaOrgTag: saturatedFatContent, 
//               total: 67.51754071983999, 
//               hasRDI: true, 
//               daily: 337.5877035991999, 
//               unit: g
//             }, 
//             {
//               label: Trans, 
//               tag: FATRN, 
//               schemaOrgTag: transFatContent, 
//               total: 1.196758109008,
//               hasRDI: false, 
//               daily: 0, 
//               unit: g
//             }, 
//             {
//               label: Monounsaturated, 
//               tag: FAMS, 
//               schemaOrgTag: null, 
//               total: 83.63292577536, 
//               hasRDI: false, 
//               daily: 0, 
//               unit: g
//             }, 
//             {
//               label: Polyunsaturated, 
//               tag: FAPU, 
//               schemaOrgTag: null, 
//               total: 40.70565125872, 
//               hasRDI: false, 
//               daily: 0, 
//               unit: g
//             }
//           ]
//         }, 
//         {
//           label: Carbs, 
//           tag: CHOCDF, 
//           schemaOrgTag: carbohydrateContent, 
//           total: 0.017039999999999996, 
//           hasRDI: true, 
//           daily: 0.005679999999999998, 
//           unit: g, 
//           sub: [
//             {
//               label: Carbs (net), 
//               tag: CHOCDF.net, 
//               schemaOrgTag: null, 
//               total: 0.017039999999999996, 
//               hasRDI: false, 
//               daily: 0, 
//               unit: g
//             }, 
//             {
//               label: Fiber, 
//               tag: FIBTG, 
//               schemaOrgTag: fiberContent, 
//               total: 0, 
//               hasRDI: true, 
//               daily: 0, 
//               unit: g
//             }, 
//             {
//               label: Sugars, 
//               tag: SUGAR, 
//               schemaOrgTag: sugarContent, 
//               total: 0.017039999999999996, 
//               hasRDI: false, 
//               daily: 0,
//               unit: g
//             }, 
//             {
//               label: Sugars, 
//               added, 
//               tag: SUGAR.added, 
//               schemaOrgTag: null, 
//               total: 0, 
//               hasRDI: false, 
//               daily: 0, 
//               unit: g
//             }
//           ]
//         }, 
//         {
//           label: Protein, 
//           tag: PROCNT, 
//           schemaOrgTag: proteinContent, 
//           total: 229.7228518304, 
//           hasRDI: true, 
//           daily: 459.4457036608, 
//           unit: g
//         }, 
//         {
//           label: Cholesterol, 
//           tag: CHOLE, 
//           schemaOrgTag: cholesterolContent, 
//           total: 986.3884347999999, 
//           hasRDI: true, 
//           daily: 328.7961449333333, 
//           unit: mg
//         }, 
//         {
//           label: Sodium, 
//           tag: NA, 
//           schemaOrgTag: sodiumContent, 
//           total: 4285.3235703504, 
//           hasRDI: true, 
//           daily: 178.5551487646, 
//           unit: mg
//         }, 
//         {
//           label: Calcium, 
//           tag: CA, 
//           schemaOrgTag: null, 
//           total: 144.645410112992, 
//           hasRDI: true, 
//           daily: 14.464541011299202, 
//           unit: mg
//         }, 
//         {
//           label: Magnesium, 
//           tag: MG, 
//           schemaOrgTag: null, 
//           total: 247.410356488708, 
//           hasRDI: true, 
//           daily: 58.90722773540667, 
//           unit: mg
//         }, 
//         {
//           label: Potassium, 
//           tag: K, 
//           schemaOrgTag: null, 
//           total: 2339.3485133656636, 
//           hasRDI: true, 
//           daily: 49.773372624801354, 
//           unit: mg
//         }, 
//         {
//           label: Iron, 
//           tag: FE, 
//           schemaOrgTag: null, 
//           total: 11.13869659647364, 
//           hasRDI: true, 
//           daily: 61.88164775818689, 
//           unit: mg
//         }, 
//         {
//           label: Zinc, 
//           tag: ZN, 
//           schemaOrgTag: null, 
//           total: 16.1967740487108, 
//           hasRDI: true, 
//           daily: 147.24340044282545, 
//           unit: mg
//         }, 
//         {
//           label: Phosphorus, 
//           tag: P, 
//           schemaOrgTag: null, 
//           total: 1820.4597322079999, 
//           hasRDI: true, 
//           daily: 260.06567602971427, 
//           unit: mg
//         }, 
//         {
//           label: Vitamin A, 
//           tag: VITA_RAE, 
//           schemaOrgTag: null, 
//           total: 700.1022110239999, 
//           hasRDI: true, 
//           daily: 77.7891345582222, 
//           unit: Âµg
//         }, 
//         {
//           label: Vitamin C, 
//           tag: VITC, 
//           schemaOrgTag: null, 
//           total: 19.7403399424, 
//           hasRDI: true, 
//           daily: 21.93371104711111, 
//           unit: mg
//         }, 
//         {
//           label: Thiamin (B1), 
//           tag: THIA, 
//           schemaOrgTag: null, 
//           total: 0.7416827478399999, 
//           hasRDI: true, 
//           daily: 61.80689565333333, 
//           unit: mg
//         }, 
//         {
//           label: Riboflavin (B2),
//           tag: RIBF, 
//           schemaOrgTag: null, 
//           total: 1.49018149568, 
//           hasRDI: true, 
//           daily: 114.62934582153845, 
//           unit: mg
//         }, 
//         {
//           label: Niacin (B3), 
//           tag: NIA, 
//           schemaOrgTag: null, 
//           total: 83.90837275519999, 
//           hasRDI: true, 
//           daily: 524.42732972, 
//           unit: mg
//         }, 
//         {
//           label: Vitamin B6, 
//           tag: VITB6A, 
//           schemaOrgTag: null, 
//           total: 4.3190513624, 
//           hasRDI: true, 
//           daily: 332.23472018461536, 
//           unit: mg
//         }, 
//         {
//           label: Folate equivalent (total), 
//           tag: FOLDFE, 
//           schemaOrgTag: null,
//           total: 74.878274784, 
//           hasRDI: true, 
//           daily: 18.719568696, 
//           unit: Âµg
//         }, 
//         {
//           label: Folate (food), 
//           tag: FOLFD, 
//           schemaOrgTag: null, 
//           total: 74.878274784, 
//           hasRDI: false, 
//           daily: 0, 
//           unit: Âµg
//         }, 
//         {
//           label: Folic acid, 
//           tag: FOLAC, 
//           schemaOrgTag: null, 
//           total: 0, 
//           hasRDI: false, 
//           daily: 0, 
//           unit: Âµg
//         }, 
//         {
//           label: Vitamin B12, 
//           tag: VITB12, 
//           schemaOrgTag: null, 
//           total: 3.87297086384, 
//           hasRDI: true, 
//           daily: 161.37378599333334, 
//           unit: Âµg  
//         }, 
//         {
//           label: Vitamin D, 
//           tag: VITD, 
//           schemaOrgTag: null, 
//           total: 2.4675424928, 
//           hasRDI: true, 
//           daily: 16.45028328533333, 
//           unit: Âµg
//         }, 
//         {
//           label: Vitamin E, 
//           tag: TOCPHA, 
//           schemaOrgTag: null, 
//           total: 4.3601937392, 
//           hasRDI: true, 
//           daily: 29.06795826133333, 
//           unit: mg
//         }, 
//         {
//           label: Vitamin K, 
//           tag: VITK1, 
//           schemaOrgTag: null, 
//           total: 20.494568695999998, 
//           hasRDI: true, 
//           daily: 17.078807246666663, 
//           unit: Âµg
//         }, 
//         {
//           label: Sugar alcohols, 
//           tag: Sugar.alcohol, 
//           schemaOrgTag: null, 
//           total: 0,
//           hasRDI: false, 
//           daily: 0, 
//           unit: g
//         }, 
//         {
//           label: Water, 
//           tag: WATER, 
//           schemaOrgTag: null, 
//           total: 818.9074440657416, 
//           hasRDI: false, 
//           daily: 0, 
//           unit: g
//         }
//       ]
//     }, 
//     _links: {
//       self: {
//         href: https://api.edamam.com/api/recipes/v2/8d3e4b9299664a1ca8e6f5bdb8532300?type=public&app_id=a3a9184c&app_key=2862380f3532e3d704a3a265ef2dea0b, 
//         title: Self
//       }
//     }
//   }