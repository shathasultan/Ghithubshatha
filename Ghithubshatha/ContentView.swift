//
//  ContentView.swift
//  Ghithubshatha
//
//  Created by shatha alsawilam on 26/03/1446 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var showImage = false
    
    var body: some View {
        VStack {
            if showImage {
                Image("MandoImage") // استدعاء الصورة من الـ Assets
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .transition(.opacity) // تأثير الظهور والاختفاء
                    .animation(.easeInOut(duration: 0.4), value: showImage)
                
                Text("Mando")
                    .font(.largeTitle)
                    .foregroundColor(Color("BlueColor")) // استدعاء اللون من الـ Assets
                    .transition(.opacity)
                    .animation(.easeInOut(duration: 0.4), value: showImage)
            }
        }
        .onAppear {
            withAnimation {
                self.showImage = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    self.showImage = false
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
