//
//  ContentView.swift
//  Youtube Interface
//
//  Created by Arief Ramadhan on 27/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
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
                
        }
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
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("konten")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10.00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                HStack (spacing: 5){
                    Image("rip")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 30, height: 30)
                    VStack(alignment: .leading) {
                        Text("Tutorial create content #1")
                            .font(.headline)
                        HStack {
                            Text("this is description about video how to create a good content to post on your Instagram")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("konten2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10.00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                HStack{
                    Image("rip")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 30, height: 30)
                    VStack(alignment: .leading) {
                        Text("Tutorial create content #2")
                            .font(.headline)
                        HStack {
                            Text("this is description about video how to create a good content to post on your Instagram")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
            
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("konten")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10.00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                HStack{
                    Image("rip")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 30, height: 30)
                    VStack(alignment: .leading) {
                        Text("Tutorial create content #2")
                            .font(.headline)
                        HStack {
                            Text("this is description about video how to create a good content to post on your Instagram")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
            }
        }
    }
}
