//
//  StoreDetailProductsView.swift
//  IgDelivery
//
//  Created by labstation on 01/07/25.
//

import SwiftUI

struct StoreDetailProductsView: View {
    
    let products: [ProductType]
    @State private var selectProduct: ProductType?
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Produtos")
                .font(.title2)
                .bold()
                .padding()
            
            ForEach(products) { product in
                
                Button {
                    selectProduct = product
                } label: {
                    
                    StoreDetailProductItemView(product: product)
                }
                .sheet(item: $selectProduct) { product in
                    ProductDetailView(product: product)
                    
                }
                
            }
        }
    }
}
#Preview {
    StoreDetailProductsView(products: storesMock[0].products)
}
