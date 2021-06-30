//
//  DetailView.swift
//  Hacker News
//
//  Created by Gustavo Belo on 30/06/21.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.ibm.com")
    }
}
