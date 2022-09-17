//
//  String + Extension .swift
//  MailTestTask
//
//  Created by Артур Дохно on 17.09.2022.
//

import Foundation

extension String {
    
    func isValid() -> Bool {
        let format = "SELF MATCHES %@"
        let regEx = "[a-zA-Z0-9._]+@[a-zA-z]+\\.[a-zA-Z]{2,}"
        return NSPredicate(format: format, regEx).evaluate(with: self)
    }
    
}
