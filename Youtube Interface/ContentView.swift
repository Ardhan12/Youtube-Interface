//
//  ContentView.swift
//  Youtube Interface
//
//  Created by Arief Ramadhan on 27/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            Home()
                .tabItem {
                Image(systemName: "paperplane.fill")
                Text("Explore")
            }
            Home()
                .tabItem {
                Image(systemName: "envelope.fill")
                Text("Message")
            }
            Home()
                .tabItem {
                Image(systemName: "person.fill")
                Text("Account")
            }
        }
//        .accentColor(Color("tapBar"))
    }
}

struct Home: View {
    var body: some View {
        NavigationView {
            konten()
                .navigationBarItems(
                    leading:
                        HStack{
                            Button(action: {print("Hello Button youtube")}){
                                Image("youtube")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 120, height: 90)
                            }
                        },
                    trailing: HStack(spacing: 10){
                        Button(action: {print("Hello Button")}){ Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("Hello Button")}){ Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)
                        }
                        
                        Button(action: {print("Hello Button")}){ Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action: {print("Hello Button")}){ Image("rip")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 25, height: 25)
                                .clipShape(Circle())
                        }
                    }
                )
                .navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct konten: View {
    var body: some View {
        List{
            cellContent(imageContent: "konten", profile: "rip", title: "Tutorial create content #1", description: "this is description about video how to create a good content to post on your Instagram", duration: "10.00")
            cellContent(imageContent: "konten2", profile: "rip", title: "Tutorial create content #2", description: "this is description about video how to create a good content to post on your Instagram", duration: "10.00")
            cellContent(imageContent: "konten", profile: "rip", title: "Tutorial create content #3", description: "this is description about video how to create a good content to post on your Instagram", duration: "10.00")
        }
    }
}


struct cellContent : View{
    
    var imageContent: String
    var profile: String
    var title: String
    var description: String
    var duration: String
    
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageContent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(duration)
                    .padding(.all, 5)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            HStack{
                Image(profile)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 30, height: 30)
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                    HStack {
                        Text(description)
                            .font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
}
