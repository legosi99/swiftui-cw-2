//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise1: View {
    @State var name = ""
    @State var numBottle = 0
    
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                TextField("اكتب اسمك هنا", text: $name)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .padding()
                
                Stepper("كم بطلا من الماء تريد ان تتعهد ان تشرب ؟", value: $numBottle, in: 1...122).font(.system(size: 20))
                    .padding()
                
                Spacer()
                
                VStack(spacing: 5){
                    Text("اتعهد انا")
                    Text("\(name)")
                    Text("ان اشرب")
                    Text("\(numBottle)")
                    Text("اكوابا من الماء يوميا")
                    Text("والله على مااقول شهيد")
                }
                
                Spacer()        
            }.padding()
            .font(.custom("Kufam-Regular", size: 30))
        }
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}
