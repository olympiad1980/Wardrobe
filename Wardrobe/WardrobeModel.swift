// OUTERWEAR UNDERWEAR FOOTWEAR
struct WardrobeModel {
    
    var clothes = [Clothes]()
    
    func createWardrobeWhithClothes() -> [Clothes] {
        
        let сlothesArray = [
            
            Clothes(name: "Hats", icons: "iconsCapsMagenta",
                         images: ["space", "space", "space", "space"]),
            Clothes(name: "Outewear", icons: "iconsOutMagenta",
                         images: ["picters01", "picters03", "picters02","picters05","picters04", "picters02", "picters01"]),
            Clothes(name: "Underwear", icons: "iconsUnderMagenta",
                         images: ["picters02", "picters01", "picters03", "picters05","picters04", "picters01"]),
            Clothes(name: "Footwear", icons: "iconsFootMagenta",
                         images: ["picters03", "picters04", "picters03", "picters05","picters01","picters02"])
        ]
        return сlothesArray
    }
    
//    let blockClothes: ([ClothesModel]) -> Void?
}
