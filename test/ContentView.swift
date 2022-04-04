//
//  ContentView.swift
//  test
//
//  Created by Aziz J on 04/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State  var counts = 0.0
    @State var countt = 0.0
    @State var counth = 0.0

    var body: some View {
        
        ZStack(alignment: .center) {Image("BG-1").resizable()
                .scaledToFit().opacity(0.8
            )
            HStack(){Text("تسبيحات: \(Int(counts))").foregroundColor(Color.white)
                Button(action: { self.counts+=1}){Text("سبح")}
                Button(action: { self.counts=0}){Text("اعادة")}}
            VStack {
               
                ProgressView(value: counts,total:33)
                   
                       // and if you want to be explicit / future-proof...
                       // .progressViewStyle(CircularProgressViewStyle())
            }.offset(y:20)
            HStack(){Text("تكبيرات: \(Int(countt))").foregroundColor(Color.white)
                
                Button(action: { self.countt+=1}){Text("كبر")}
                Button(action: { self.countt=0}){Text("اعادة")}}.offset(y:80)
            
            VStack {
               
                ProgressView(value: countt,total:33)
                
               
                    
                    
                
                   
                       // and if you want to be explicit / future-proof...
                       // .progressViewStyle(CircularProgressViewStyle())
            }.offset(y:95)
            
            
        
    
            HStack(){Text("الحمدلله \(Int(counth))").foregroundColor(Color.white)
                
                Button(action: { self.counth+=1}){Text("حمد")}
                Button(action: { self.counth=0}){Text("اعادة")}}.offset(y:-80)
            
            VStack {
               
                ProgressView(value: counth,total:33)
                    
            }.offset(y:-65)
                    
                    
                
                   
                       // and if you want to be explicit / future-proof...
                       // .progressViewStyle(CircularProgressViewStyle())
    
            
        
        }
        
        
    }}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
