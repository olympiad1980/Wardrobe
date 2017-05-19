// OUTERWEAR UNDERWEAR FOOTWEAR
struct WardrobeModel {
    
    var clothes = [Clothes]()
    
    func createWardrobeWhithClothes() -> [Clothes] {
        
        let сlothesArray = [
            
            Clothes(name: "hats", icons: "caps",
                         images: ["space", "space", "space", "space"]),
            Clothes(name: "outewear", icons: "outeweare",
                         images: ["outwear", "outwear", "outwear","outwear","outwear", "outwear", "outwear"]),
            Clothes(name: "underwear", icons: "shorts",
                         images: ["underwear", "underwear", "underwear", "underwear","underwear", "underwear"]),
            Clothes(name: "footwear", icons: "footwear",
                         images: ["picters03", "picters04", "picters03", "picters05","picters01","picters02"])
        ]
        return сlothesArray
    }
    
//    let blockClothes: ([ClothesModel]) -> Void?
}
