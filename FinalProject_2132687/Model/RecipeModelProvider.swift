//
//  RecipeModelProvider.swift
//  FinalProject_2132687
//
//  Created by english on 2023-04-13.
//

import Foundation

class RecipeModelProvider {
    
    static var all: [RecipeModel] = []
    
    static func insert(newRecipe: RecipeModel) {
        newRecipe.id = RecipeModel.getNextId()
        
        all.append(newRecipe)
    }
    
    static func update(recipe: RecipeModel) -> Bool {
        for (index, currentRecipe) in all.enumerated() {
            if currentRecipe.name == recipe.name {
                all[index] = recipe
                return true
            }
        }
        return false
    }
    
    static func delete(recipe: RecipeModel) -> Bool {
        for (index, currentRecipe) in all.enumerated() {
            if currentRecipe.name == recipe.name {
                all.remove(at: index)
                return true
            }
        }
        return false
    }
    
    static func mockData() {
        let recipe1 = RecipeModel(name: "MAPLE CARAMEL POPS", ingredients: "1 cup (200 g) sugar, 1/4 cup (60 mL) maple syrup, 1/4 cup (60 mL) corn syrup, 4 cup (60 g) unsalted butter, 1 tbsp (15 mL) lemon juice, 1/2 tsp (2.5 g) salt, 1 tsp (5 mL) vanilla extract, 1/2 tsp (2.5 g) baking soda, 1/2 cup (64 g) red Maple Leaf candy sprinkles", instructions: "1. Prepare popcorn according to package instructions. Transfer to large bowl; set aside.2.Combine sugar, maple syrup, corn syrup, butter, lemon juice, 2 tbsp (30 mL) water and salt in heavy-bottom saucepan set over medium heat; bring to boil, stirring to combine.3.Boil for 8 to 10 minutes or until caramel reaches 245F/118C on candy thermometer, or firm ball stage (when a drop of caramel added to a small dish of cold water forms a pliable ball of caramel). Remove from heat. Stir in vanilla and baking soda. Working quickly, pour over popcorn, tossing evenly to coat. Let cool slightly. Toss in sprinkles.4.Using buttered or wet hands, shape into twelve 2-inch (5 cm) balls. Place on parchment paper–lined tray. Insert red-and-white striped paper straw or lollipop stick into centre of each ball. Let cool completely.", imageLink: "https://www.readyseteat.ca/sites/g/files/qyyrlu541/files/uploadedImages/RSE_0018_Orville%20-%20MapleCaramelPopcornPop_-047.jpg")
        insert(newRecipe: recipe1)
        
        let recipe2 = RecipeModel(name: "SOYA GLAZED SNAPPER", ingredients: "1 tbsp. (15 mL) canola oil, 3 cloves garlic, minced, 1 tbsp. (15 mL) minced fresh ginger, 1/4 cup (60 mL) VH® Lite Soya Sauce, 2 tbsp. (30 mL) Balsamic vinegar, 1 tbsp. (15 mL) honey or brown sugar, 8 baby bok choy, halved (about 8 cups / 2 L), 4 red snapper filets", instructions: "1. Heat oil in large skillet set over medium-high heat. Add garlic and ginger; stir-fry for 30 seconds. 2. Pour in VH® Lite Soya Sauce, vinegar and honey. Boil gently for about 4 minutes or until reduced to a glaze-like consistency. Remove to bowl. 3. Add 2 tbsp. (30 mL) water to pan. Add bok choy; stir-fry for 2 minutes. Arrange fish over bok choy in single layer. Brush glaze evenly over top of fish. Reduce heat and cook, covered, over low heat, for 6 to 9 minutes or until fish flakes easily with a fork.", imageLink: "https://www.readyseteat.ca/sites/g/files/qyyrlu541/files/uploadedImages/VH_Soya-Glazed-Snapper_1.jpg")
        insert(newRecipe: recipe2)
        
        let recipe3 = RecipeModel(
            name: "BAKED SALMON FILLETS DIJON",
            
            ingredients: "4 (4 ounce) fillets salmon, 3 tablespoons prepared Dijon-style mustard,salt and ground black pepper to taste, ¼ cup Italian-style dry bread crumbs, ¼ cup butter, melted",
            
            instructions: "1.Preheat the oven to 400 degrees F (200 degrees C). Line a shallow baking pan with aluminum foil. 2.Place salmon fillets skin-side down on the prepared baking pan. Spread a thin layer of mustard on top of each fillet; season with salt and pepper. Top with bread crumbs, then drizzle with melted butter. 3.Bake in the preheated oven until salmon flakes easily with a fork, about 15 minutes.",
          
            imageLink: "https://www.allrecipes.com/thmb/lbJtqe7Sc3JA5xOiA9fRxPzFibs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Baked-Salmon-Fillets-with-Dijon-Mustard-2000-23028416a7824c19b31ec4c851598111.jpg")
        
        insert(newRecipe: recipe3)
        
        let recipe4 = RecipeModel(
            name: "VEGGIES GARLIC NOODLES",
            ingredients: "2 tablespoons vegetable oil (30 mL), 5 cloves garlic, minced4 green onions, 2 carrots, 1 cup snap peas (100 g), 2 tablespoons brown sugar, 3 tablespoons soy sauce, 9 oz dried rice noodles (250 g), cooked",
            instructions: "1.Heat the vegetable oil in a large skillet over medium heat. Add the garlic and 3 green onions and cook for 2–3 minutes, until fragrant and tender. Add the carrots and snap peas, then stir in the brown sugar and soy sauce,2.Add the noodles and toss for a couple of minutes, until the noodles are well-coated and the vegetables are tender. Season with salt and pepper,3.Serve immediately, garnished with the remaining green onion,4.Enjoy!.",
            imageLink: "https://www.veganricha.com/wp-content/uploads/2022/03/Chili-Garlic-Noodles-0999.jpg")
        insert(newRecipe: recipe4)
        
        let recipe5 = RecipeModel(
            name: "MAC 'N CHEESY",
            ingredients: "1 lb. elbow macaroni, Kosher salt and freshly ground black pepper, 2 (12-ounce) cans evaporated milk, 12 oz. Cheddar cheese, grated, (about 1 1/2 cups), 1 cup frozen beans",
            instructions: "Place pasta and 3 cups water in a large pot. Season with salt. Bring to a boil and cook, stirring often, until water is absorbed, 5 to 6 minutes. Add evaporated milk and bring to a boil. Add cheese and reduce temperature to low. Cook, stirring, until cheese is melted and sauce is thickened, 1 to 2 minutes. Add peas and cook until warmed through, about 1 minute. Season with salt and pepper. Serve immediately.",
            imageLink: "https://thebakermama.com/wp-content/uploads/2014/09/IMG_1664-scaled.jpg")
        insert(newRecipe: recipe5)
        
        let recipe6 = RecipeModel(
            name: "COBB SALAD",
            ingredients: "1 head romaine, chopped, 2 1/2 c. cubed rotisserie chicken breast (about 10 oz.), 1/2 medium cucumber, halved and sliced, 4 hard-cooked eggs, 1 medium avocado, peeled and cubed, 2 to 3 ounces blue cheese, crumbled, 6 to 8 slices bacon, cooked",
            instructions: "Make salad: Arrange lettuce on a large platter. Top with rows of chicken, cucumber, eggs, tomatoes, avocado, cheese, and bacon. Drizzle with dressing and serve immediately.",
            imageLink: "https://hips.hearstapps.com/hmg-prod/images/210510-cl-fooddigital0668-jpg-1620844305.jpg?crop=1.00xw:0.801xh;0,0.125xh&resize=1200:*")
        insert(newRecipe: recipe6)
        
        let recipe7 = RecipeModel(
            name: "TURMERIC CHICKPEA SOUP",
            ingredients: "olive oil,Onion & garlic cloves, Carrot & celery, Turmeric, Chickpeas, Butternut squash, Dark leafy greens, Lemon juice, Salt & black pepper, roasted chickpeas",
            instructions: "1. Saute the vegetables. 2. Simmer the ingredients. 3. Blend the soup. 4. Add lemon juice and greens. 5.Adjust to preference. 6.Garnish and serve",
            imageLink: "https://cdn-abeco.nitrocdn.com/vMCLEGbZccgRIgpGXvgkDDYcPokgENUq/assets/images/optimized/rev-40d1508/wp-content/uploads/2022/08/Turmeric-Chickpea-Soup-main.jpg")
        insert(newRecipe: recipe7)
        
        let recipe8 = RecipeModel(
            name: "FISH BURGER BAR",
            ingredients: "1 box High Liner Crispy Breaded Fish Burgers, sliced onion, bell pepper, julienne, Salt & peppar,cup shaved lettuce,cup bruschetta, sliced cucumber, cup crispy onions, 4-5 slices cheddar cheese, 4-5 burger buns",
            instructions: "1. Prepare fish burgers as per package directions.2. Sauté onions and peppers on medium high heat, season with salt and pepper and reserve.3. Mix relish, mustard and mayo for tartar sauce. Mix sriracha and mayo for spicy aioli.4. Place accompaniments into serving vessels and invite your family to create their own fish burgers.",
            imageLink: "https://images.contentstack.io/v3/assets/blt3301657580909586/blt38550178a412bfa6/640ba11d3acc576c560350af/Fish-Burger-Bar-1.jpg?height=600&dpr=2&auto=webp&format=pjpg")
        insert(newRecipe: recipe8)
        let recipe9 = RecipeModel(
            name: "SOUTHERN LEMON RICE",
            ingredients: "vegetable oil, 3 tsp urad dal, yellow mustard seeds, dried chilli, chopped ginger, 1/2 tsp ground turmeric, curry leaves, 1 cup lemon juice, 700g cooked basmati rice, Freshly grated coconut to serve",
            instructions: "1. Heat oil in a large non-stick frypan over medium-high heat. Add urad dal (if using), mustard seeds and chilli. Stir-fry for 2 minutes or until or until seeds start to pop. Add ginger, turmeric and curry leaves and cook for 40 seconds. Add lemon juice and season with salt flakes and freshly ground black pepper. Cook for 30 seconds, then add the rice. Stir-fry to heat through, being careful not to break up the grains too much. Taste and adjust lemon juice and seasoning. Stir in the coconut (if using), taste and serve.",
            imageLink: "https://img.delicious.com.au/ql6szh0r/w759-h506-cfill/del/2022/08/p64-southern-lemon-rice-174081-1.png")
        insert(newRecipe: recipe9)
        
        
        let recipe10 = RecipeModel(
            name: "GRILLED CHICKEN WINGS",
            ingredients: "garlic rib sauce(125ml), plum dipping sauce(125ml), chopped fresh coriander, 1kg chicken wings, salt & ground pepper, zest of 2 oranges, grated fine, PAM cooking spray",
            instructions: "Mix the two VH® Sauces, orange zest, coriander, salt and pepper and marinate the chicken in the refrigerator for 1-2 hours.Cook chicken, turning occasionally, on medium to medium-low heat on the BBQ for 25 minutes.While chicken is on the grill, boil remaining marinade for 5 minutes and use as baste for the chicken during last 5 minutes of grilling. ",
            imageLink: "https://www.readyseteat.ca/sites/g/files/qyyrlu541/files/uploadedImages/VH_Grilled-Chicken-Wings.jpg")
        insert(newRecipe: recipe10)
        
        
        let recipe11 = RecipeModel(
            name: "SPICED YOGURT CURRY",
            ingredients: "Curd(yogurt), cumin seeds, dry red chili powder, turmeric, curry leaves, asafoetida (hing), garlic, coriander leaves, for garnishing.",
            instructions: "Firstly, Heat oil (or ghee) in a pan on medium flame and add cumin seeds. Let them splutter.Add garlic, curry leaves, dry red chili, hing, and saute for a few seconds till the garlic turns light brown.Next, add turmeric, red chili powder and mix well. Turn off the gas immediately.Take hung curd (or greek yogurt) in a bowl and pour the tempering on the yogurt with some salt to taste.Lastly, mix well. Garnish with coriander leaves.",
            imageLink:"https://www.indianveggiedelight.com/wp-content/uploads/2020/10/Dahi_tadka-1536x2048.webp")
        insert(newRecipe: recipe11)
        
        let recipe12 = RecipeModel(
            name: "VEGETARIAN TACOS",
            ingredients: "Olive oil,veggies(mushrooms, red bell pepper, garlic, red onion, zucchini, spices & herbs(cumin, chili powder,smoked paprika,dried oregano), black beans, lime juice, cilantro",
            instructions: "In a large skillet, heat the oil over medium high heat. Add all of the veggies and cook until the vegetables are softened, stirring occasionally. Add in the garlic and cook for an additional minute.Stir in the cumin, chili powder, smoked paprika, oregano, and a little bit of water. The water will help everything come together.Carefully stir in the black beans, making sure you don’t smash them. Add the lime juice and cilantro. Season with salt and pepper, to taste.Now, it’s time to assemble the tacos! Place the filling in the center of warm corn tortillas and top with desired toppings! ",
            imageLink:"https://www.twopeasandtheirpod.com/wp-content/uploads/2021/06/Veggie-Tacos4565.jpg")
        insert(newRecipe: recipe12)
        
        let recipe13 = RecipeModel(
            name: "SWEET CORN SOUP",
            ingredients: "Sweet corn, carrots, green peas, green beans, mushrooms, and cabbage, Ginger & Garlic, Vegetable Broth, Salt, Pepper & Sugar, vinegar, cornstarch, red chili paste",
            instructions: "1 - Heat oil in a large pot on medium-high heat. Add ginger and garlic. Saute them until they are fragrant.2 - Add the carrots, the white portion of the spring onions, corn kernels, and the creamed corn. Add the broth, black pepper, salt, sugar, and vinegar and stir well.3 - Bring to a boil, and simmer on low flame for about 15 minutes until the veggies are cooked. Stir at regular intervals.4 - Mix the cornstarch slurry in ¼ cup water with no lumps. Then add it to the soup. Stir it and let it cook until the soup thickens.5 - Garnish with the green part of spring onions and serve ",
            imageLink: "https://pipingpotcurry.com/wp-content/uploads/2023/02/Sweet-Corn-Soup-Recipe-Indian-Piping-Pot-Curry.webp")
        insert(newRecipe: recipe13)
        
        let recipe14 = RecipeModel(
            name: "CHOCOLATE CHIP COOKIES",
            ingredients: "2 1/4 cups all-purpose flour, 1 tsp baking sode(5ml), 1/2 tsp salt(2ml), 1 cup butter(250ml), 3/4 cup granulated sugar(175ml), 3/4 cup light brown sugar(175ml), 1 tsp vanilla extract(5ml), 2 eggs, 2 cups HERSHEY'S CHIPITS Dark Chocolate Chips or HERSHEY'S CHIPITS Semi-Sweet Chocolate Chips (500 mL), 1 cup nuts(250ml).",
            instructions: "1.Heat oven to 375°F (190°C).2.Stir together flour, baking soda and salt. Beat butter, granulated sugar, brown sugar and vanilla in large bowl with mixer until creamy. Add eggs; beat well. Gradually add flour mixture, beating well. Stir in chocolate chips and nuts, if desired. Drop by rounded teaspoons onto ungreased cookie sheet.3.Bake 8 to 10 minutes or until lightly browned. Cool slightly; remove from cookie sheet to wire rack. Cool completely.4.Pan Recipe: Spread batter in greased 15-1/2x10-1/2x1-inch (39x27x2.5-cm) jelly-roll pan. Bake at 375°F (190°C) for 20 minutes or until lightly browned. Cool completely; cut into bars. ",
            imageLink:"https://www.hersheyland.ca/content/dam/hersheyland_canada/en_ca/recipe-logos/recipe-images/chipits-perfect-chocolate-chip-cookies.jpg?im=Resize=(700)?im=Resize=(394)")
        insert(newRecipe: recipe14)
        
        let recipe15 = RecipeModel(
            name: "CRISPY WAFFLES",
            ingredients: "1 cup (130 grams) all-purpose flour, 1/4 cup (30 grams) cornstarch, 1/2 teaspoon fine sea salt, 1/2 teaspoon baking powder, 1/4 teaspoon baking soda, 1 tablespoon sugar, 1 cup (235 ml) buttermilk or milk, 1/3 cup (80 ml) vegetable oil, 1 teaspoon vanilla extract, 1 large egg, Butter, syrup and/or berries, for serving.",
            instructions: "1.Whisk together the flour, cornstarch, salt, baking powder, baking soda, and sugar in a large bowl.2.In a separate bowl, whisk the buttermilk, oil, and vanilla extract.3.For the lightest waffles, separate the egg. Whisk the egg yolk into the milk mixture.4.f you separate the egg, add the egg white to another bowl, use a handheld mixer to beat until stiff, and then set aside.5.Whisk the milk mixture into the dry ingredients until only small lumps are left. Switch to a rubber spatula and gently fold in the whipped egg white.6.Set the batter aside for five to ten minutes while preparing the waffle iron.7.Heat the waffle iron to the highest heat setting.8.Cook waffles until golden and crisp, adding enough batter to the waffle iron to fill the entire lower grid. If the waffles look too dark, turn the heat down slightly.9.Serve the waffles immediately or keep them warm and crispy on a rack in a 200°F oven until ready to serve. Stacking them outside the oven will cause them to steam and become floppy",
            imageLink: "https://www.inspiredtaste.net/wp-content/uploads/2022/05/Easy-Crispy-Waffles-1200.jpg")
        insert(newRecipe: recipe15)
        
        let recipe16 = RecipeModel(
            name: "CRISPY RICE",
            ingredients: "Rice, coconut milk, oil, Scallions, water, salt and black pepper",
            instructions: " 1- Take a saucepan and add a cup of water into it. Add coconut milk and rinsed rice into this mix. Season it with salt and pepper and boil this mixture until the rice is cooked properly. Cook the rice for twenty minutes until it is tender.2- In the meantime, chop some scallions and add it into the bowl of rice and mix everything.3- In another pan, heat olive oil and add cooked rice for sautéing. Cook for five minutes until it becomes golden brown and crispy. Give the rice a proper shape so that the bottom layer is intact with the pan.",
            imageLink: "https://thefoodxp.com/wp-content/uploads/2023/03/Chef-Bobby-Flay-Cooked-Rice.jpg")
        insert(newRecipe: recipe16)
        
        
    }
}

