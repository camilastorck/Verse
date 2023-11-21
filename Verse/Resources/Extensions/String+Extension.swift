//
//  String+Extension.swift
//  Verse
//
//  Created by Camila Storck on 31/05/2023.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func localized(_ args: CVarArg...) -> String {
        return String(format: localized, locale: Locale.current, arguments: args)
    }
}
