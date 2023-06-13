//
//  UIImageView.swift
//  LOL_Search
//
//  Created by Sy Lee on 2023/06/11.
//

import UIKit

extension UIImage {
    func fetchImage(url: URL?) async throws -> UIImage {
        guard let safeUrl = url else { throw NSError(domain: "FetchImage() Unvalid URL", code: 900) }
        
        let request = URLRequest(url: safeUrl)
        let (data, response) = try await URLSession.shared.data(for: request)
            
        guard let statusCode = (response as? HTTPURLResponse)?.statusCode,
                  (200...299).contains(statusCode) else { throw NSError(domain: "fetch error", code: 1004) }
        guard let image = UIImage(data: data) else { throw NSError(domain: "image coverting error", code: 999) }

        return image
    }
}
