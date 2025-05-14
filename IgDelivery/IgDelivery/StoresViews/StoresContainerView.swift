//
//  StoresContainerView.swift
//  IgDelivery
//
//  Created by Labstation on 14/05/25.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30) {
                
                ForEach(storessMock) { mock in
                StoreItemView(order: mock)
                    
                }
                
            }
        }
        .padding(20)
    }
}

#Preview {
    StoresContainerView()
}
