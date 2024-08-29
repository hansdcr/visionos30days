//
//  ContentView.swift
//  day01
//
//  Created by 格林 on 2024/8/29.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    // 茶壶的下载地址
    private let url = URL(string: "https://developer.apple.com/augmented-reality/quick-look/models/teapot/teapot.usdz")!
    var body: some View {
        VStack {
            // 显示标题
            Text("Show teapot")
            
            // 创建一个3D模型，模型从url地址下载
            Model3D(url: url) {model in
                model
                    .resizable() // 允许调整大小
                    .aspectRatio(contentMode: .fit) // 保持宽高比
                    .frame(width: 200,height: 200) // 设置框架大小
            } placeholder: {
                
                // 在模型加载时显示进度指示器
                ProgressView()
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
