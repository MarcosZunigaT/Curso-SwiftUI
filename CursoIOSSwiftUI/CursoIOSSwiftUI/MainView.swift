//
//  MainView.swift
//  CursoIOSSwiftUI
//
//  Created by Marcos Antonio Zúniga Tapia on 1/10/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct MainView: View {
    
    init (){
        configureImageLoading()
    }
    var body: some View {
        MenuView()
    }
}

func configureImageLoading() {
    let downloader = SDWebImageDownloader.shared
    downloader.config.downloadTimeout = 30
    
    // Headers críticos para evitar 403
    downloader.setValue("Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Mobile/15E148 Safari/604.1", forHTTPHeaderField: "User-Agent")
    downloader.setValue("image/webp,image/apng,image/*,*/*;q=0.8", forHTTPHeaderField: "Accept")
    downloader.setValue("https://www.superherodb.com", forHTTPHeaderField: "Referer")
}

#Preview {
    MainView()
}
