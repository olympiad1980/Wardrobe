// HATS OUTERWEAR UNDERWEAR FOOTWEAR hats outewear underwear footwear
struct WardrobeModel {
    
    var clothes = [Clothes]()
    
    func createWardrobeWhithClothes() -> [Clothes] {
        
        let сlothesArray = [
            
            Clothes(name: "HATS", icons: "caps",
                         images: ["space", "space", "space", "space"]),
            Clothes(name: "OUTERWEAR", icons: "outeweare",
                         images: ["outwear", "outwear", "outwear","outwear","outwear", "outwear", "outwear"]),
            Clothes(name: "UNDERWEAR", icons: "shorts",
                         images: ["underwear", "underwear", "underwear", "underwear","underwear", "underwear"]),
            Clothes(name: "FOOTWEAR", icons: "footwear",
                         images: ["picters03", "picters04", "picters03", "picters05","picters01","picters02"])
        ]
        return сlothesArray
    }
    
//    let blockClothes: ([ClothesModel]) -> Void?
}
