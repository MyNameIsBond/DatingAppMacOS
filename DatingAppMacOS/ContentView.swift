//
//  ContentView.swift
//  DatingAppMacOS
//
//  Created by Tony Hajdini on 15/07/2020.
//  Copyright © 2020 Tony Hajdini. All rights reserved.
//

import SwiftUI

struct messageViewSender: View {
    var body: some View {
        HStack {
            Text("header")
        }
    }
}


struct messageViewRecieve: View {
    var body: some View {
        HStack {
            Text("header")
        }
    }
}


struct messageViewHeader: View {
    var body: some View {
        HStack {
            Text("header")
        }
    }
}


struct messageViewFooter: View {
    var body: some View {
        HStack {
            Text("Footer")
        }
    }
}


struct messageView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                messageViewHeader().frame(width: geometry.size.width, height: 80).background(Color.gray.opacity(0.5).blur(radius: 0.5))
                HStack {
                    
                    VStack {
                        Text("Dolores")
                    }
                }
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct ContentView: View {
    
 @State var search: String = ""
    
 var body: some View {
        GeometryReader { geometry in
        HStack {
           NavigationView {
            VStack(spacing: 0) {
                        HStack {
                            
                    TextField("Search", text: self.$search)
                        .background(Color.clear)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        }.padding(.horizontal, 10).padding(.vertical, 5)
                Divider().edgesIgnoringSafeArea(.all)
                        List {
                        ForEach(1 ... 20, id: \.self) { index in
                                NavigationLink(destination: messageView()) {
                                    VStack(alignment: .leading) {
                                    HStack {
                                        Image("pic")
                                        .resizable()
                                        .frame(width: 50, height: 55)
                                        .clipShape(Circle())
                                        VStack {
                                            Text("Link \(index)")
                                                .font(.caption)
                                                .bold()
                                                
                                            Text("Link \(index)")
                                                 .font(.caption)
                                                .foregroundColor(Color.gray)
                                            Spacer()
                                        }.padding(.top, 5)
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
