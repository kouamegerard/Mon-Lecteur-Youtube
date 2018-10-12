//
//  SingingClass.swift
//  Lecteur_Youtube
//
//  Created by Ecole NaN on 12/10/2018.
//  Copyright © 2018 Ecole NaN. All rights reserved.
//

import Foundation

class Singing {
    
    private var _singer: String
    private var _title: String
    private var _code: String
    private var _baseUrlVideo = "https://www.youtube.com/embed/"
    private var _baseUrlMiniature = "http://i.ytimg.com/vi/"
    private var _finUrlMiniature = "/maxresdefault.jpg"
    
    
    // Créons les variable function de nos variables privé
    var singer: String{
        return _singer
    }
    var title: String{
        return _title
    }
    var code: String{
        return _code
    }
    var videoUrl: String{
        return _baseUrlVideo + _code
    }
    var miniatureUrl: String{
        return _baseUrlMiniature + _code + _finUrlMiniature
    }
    
    // on aura besoin de init pour initialiser
    init(_ singer: String, _ title: String, _ code: String) {
        self._singer = singer
        self._title = title
        self._code = code
    }
}
