//
//  StoreDetailHeaderView.swift
//  IgDelivery
//
//  Created by labstation on 01/07/25.
//

import SwiftUI

struct StoreDetailHeaderView: View {
    
    let store: StoreType
    
    var body: some View {
        VStack {
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(store.name)
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Image(store.logoImage)
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            
            HStack{
                Text(store.location)
                
                ForEach(1...store.stars, id: \.self){
                    _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.caption)
                }
            }
            .padding(.vertical,8)
            .padding(.horizontal)
            
        }
    }
}

#Preview {
    StoreDetailHeaderView(store: storesMock[0])
}
