//
//  ContentView.swift
//  MapProject
//
//  Created by Banibe Ebegbodi on 10/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    //Grand Canyon
                    Text("The Grand Canyon")
                        .font(.title)
                        .bold()
                        .padding(.top)
                    NavigationLink(destination: MapView(thelat: 36.359218201886385,thelong: -111.88680417753676, pickMap: 1, latDelta: 0.02, longDelta: 0.02)) {
                        CuteTextView(title: "The Grand Canyon Satellite", bgColor: Color.gray)
                    }
                    NavigationLink(destination: MapView(thelat: 36.359218201886385,thelong: -111.88680417753676, pickMap: 0, latDelta: 0.02, longDelta: 0.02)) {
                        CuteTextView(title: "The Grand Canyon Satellite Flyover", bgColor: Color.black)
                    }
                    NavigationLink(destination: MapView(thelat: 36.359218201886385,thelong: -111.88680417753676, pickMap: 2, latDelta: 0.02, longDelta: 0.02)) {
                        CuteTextView(title: "The Grand Canyon Standard Map", bgColor: Color.blue)
                    }
                    //Niagara fALLS
                    Text("Niagara Falls")
                        .font(.title)
                        .bold()
                        .padding(.top)
                    NavigationLink(destination: MapView(thelat: 43.08275129355426, thelong: -79.07299390823505, pickMap: 1, latDelta: 0.02, longDelta: 0.02)) {
                        CuteTextView(title: "Niagara Falls Satellite", bgColor: Color.gray)
                    }
                    NavigationLink(destination: MapView(thelat: 43.08275129355426, thelong: -79.07299390823505, pickMap: 0, latDelta: 0.02, longDelta: 0.02)) {
                        CuteTextView(title: "Niagara Falls Satellite Flyover", bgColor: Color.black)
                    }
                    NavigationLink(destination: MapView(thelat: 43.08275129355426, thelong: -79.07299390823505, pickMap: 2, latDelta: 0.02, longDelta: 0.02)) {
                        CuteTextView(title: "Niagara Falls Standard Map", bgColor: Color.blue)
                    }
                    
                    //Yellowstone national Park
                    Text("Yellowstone National Park")
                        .font(.title)
                        .bold()
                        .padding(.top)
                    NavigationLink(destination: MapView(thelat: 44.64444900774002, thelong: -110.47835153238405, pickMap: 1, latDelta: 0.02, longDelta: 0.02)) {
                        CuteTextView(title: "Yellowstone Satellite", bgColor: Color.gray)
                    }
                    NavigationLink(destination: MapView(thelat: 44.64444900774002, thelong: -110.47835153238405, pickMap: 0, latDelta: 0.02, longDelta: 0.02)) {
                        CuteTextView(title: "Yellowstone Satellite Flyover", bgColor: Color.black)                    }
                    NavigationLink(destination: MapView(thelat: 44.64444900774002, thelong: -110.47835153238405, pickMap: 2, latDelta: 0.02, longDelta: 0.02)) {
                        CuteTextView(title: "Yellowstone Standard Map", bgColor: Color.blue)
                    }
                    
                    Spacer()
                }
                .padding()
            .navigationTitle("See The World!")
            }
        }
    }
}

#Preview {
    ContentView()
}

struct CuteTextView: View {
    var title: String
    var bgColor: Color
    
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(bgColor)
            .cornerRadius(8)
    }
}
