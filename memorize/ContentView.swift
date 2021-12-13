//
//  ContentView.swift
//  memorize
//
//  Created by Ari on 14/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Cardview()
                Cardview()
                Cardview()
                Cardview()
            }
            
            HStack{
                Cardview()
                Cardview()
                Cardview()
                Cardview()
            }
            
            HStack{
                Cardview()
                Cardview()
                Cardview()
                Cardview()
            }
            
            HStack{
                Cardview()
                Cardview()
                Cardview()
                Cardview()
            }
        }
   
        .padding()
    }
}

struct Cardview: View{
    @State var isfaceup: Bool = true
    var body: some View{
        ZStack{
            let shape =  RoundedRectangle(cornerRadius: 10)
            if isfaceup{
                shape
                    .foregroundColor(.white)
                    .padding(.bottom)
                shape
                    .stroke(lineWidth: 3)
                    .foregroundColor(.red)
                    .padding(.bottom)
            } else{
                Text("👽")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                shape
                    .foregroundColor(.clear)
            }
        }
        .onTapGesture {
            isfaceup = !isfaceup
        }
    }
}


























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




