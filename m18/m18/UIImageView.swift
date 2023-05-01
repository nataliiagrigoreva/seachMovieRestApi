//
//  UIImageView.swift
//  m18
//
//  Created by Nataly on 19.03.2023.
//

import UIKit

extension UIImageView {
    func loadImage(from url: String) {
        guard let imageURL = URL(string: url) else { return }
        
        DispatchQueue.global().async { [weak self] in
            guard let self = self else { return }
            
            do {
                let imageData = try Data(contentsOf: imageURL)
                let image = UIImage(data: imageData)
                
                DispatchQueue.main.async {
                    self.image = image
                }
            } catch {
                print("Error loading image from URL: \(url)\n\(error.localizedDescription)")
            }
        }
    }
}

