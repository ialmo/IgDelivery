//
//  OrderTypeGridView.swift
//  IgDelivery
//
//  Created by Labstation on 13/05/25.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    var gridLayout: [GridItem]{
        
        return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    }
    
    
    var body: some View {
        LazyHGrid(rows: gridLayout, spacing: 15) {
            ForEach(ordersMock) {
                orderItem in
                OrderTypeView(orderType: orderItem)
            }
        }
        .frame(height: 200)
        .padding(.horizontal, 15)
        .padding(.top, 15)
    }
}

struct OrderTypeGridView_Previwes: PreviewProvider {
    static var previews: some View {
        OrderTypeGridView()
            .previewLayout(.sizeThatFits)
    }
    
    
}

