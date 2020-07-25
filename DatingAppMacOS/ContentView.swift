//
//  ContentView.swift
//  DatingAppMacOS
//
//  Created by Tony Hajdini on 15/07/2020.
//  Copyright © 2020 Tony Hajdini. All rights reserved.
//

import SwiftUI


struct messageView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack {
                    Text("Dolores").frame(width: geometry.size.width, height: geometry.size.height)
            }
            }
    }
}


struct ContentView: View {
    
     @State var search: String = ""
    
     var body: some View {
            GeometryReader { geometry in
                
            HStack {
               NavigationView {
                        VStack {
                            HStack {
                                TextField("Search", text: self.$search)
                            }.padding()
                            
                            List {
                            ForEach(1 ... 10, id: \.self) { index in
                                    NavigationLink(destination: messageView()) {
                                        VStack(alignment: .leading) {
                                        HStack {
                                            Image("pic")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                            .clipShape(Circle())
                                            VStack {
                                                Text("Link \(index)")
                                                    .font(.caption)
                                                    .bold()
                                                Text("Link \(index)")
                                                     .font(.caption)
                                                Spacer()
                                                    
                                                }
                                            }
                                        }.padding(.vertical, 3)
                                    }
                                }
                            }.listStyle(SidebarListStyle()).frame(minWidth: geometry.size.width / 4)
                        }
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
