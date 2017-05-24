// HATS OUTERWEAR UNDERWEAR FOOTWEAR hats outewear underwear footwear
struct WardrobeModel {
    
    var clothes = [Cupboard]()
    
    func createWardrobeWhithClothes() -> [Cupboard] {
        
        let сlothesArray = [
            
            Cupboard(name: "HATS", icons: "caps",
                         images: ["space", "space", "space", "space"]),
            Cupboard(name: "OUTERWEAR", icons: "outeweare",
                         images: ["outwear", "outwear", "outwear","outwear","outwear", "outwear", "outwear"]),
            Cupboard(name: "UNDERWEAR", icons: "shorts",
                         images: ["underwear", "underwear", "underwear", "underwear","underwear", "underwear"]),
            Cupboard(name: "FOOTWEAR", icons: "footwear",
                         images: ["picters03", "picters04", "picters03", "picters05","picters01","picters02"])
        ]
        return сlothesArray
    }
    
//    let blockClothes: ([ClothesModel]) -> Void?
}
