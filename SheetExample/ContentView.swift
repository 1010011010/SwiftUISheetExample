//
//  ContentView.swift
//  SheetExample
//
//  Created by Ilja Modrau on 13.04.20.
//  Copyright © 2020 Hahn & Modrau. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAddPresented = false
    
    
    var body: some View {
        
        NavigationView {
            Text("Tap plus to add item")
                .navigationBarTitle("Main Screen Title")
                .navigationBarItems(trailing:
                    Button(action: {
                        self.isAddPresented = true
                    }) {
                        Image(systemName: "plus")
                    }
            )
                .sheet(isPresented: $isAddPresented,
                       onDismiss: {
                        self.isAddPresented = false
                }) {
                    NavigationView {
                        Text("Tap on save")
                            .navigationBarTitle("Add something")
                            .navigationBarItems(leading: Button(action: {self.isAddPresented = false}, label: {Text("Save")}))
                        
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
