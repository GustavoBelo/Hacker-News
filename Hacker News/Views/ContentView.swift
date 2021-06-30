//
//  ContentView.swift
//  Hacker News
//
//  Created by Gustavo Belo on 29/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                
            }
            .navigationBarTitle("HACKERS NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11")
    }
}
