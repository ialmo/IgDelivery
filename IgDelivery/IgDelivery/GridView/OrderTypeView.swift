//
//  OrderTypeView.swift
//  IgDelivery
//
//  Created by Labstation on 13/05/25.
//

import SwiftUI

struct OrderTypeView: View {
    
    let orderType: OrderType
    
    var body: some View {
        VStack(spacing: 5) {
            Image(orderType.image)
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false, vertical: true)
            Text(orderType.name)
                .font(.system(size: 10))
            
        }
        .frame(width: 70, height: 100)
    }
}

struct OrderTypeView_Previwes: PreviewProvider {
    static var previews: some View {
        OrderTypeView(orderType: OrderType(id: 1, name: "Restaurante", image: "hamburguer"))
            .previewLayout(.sizeThatFits)
    }
}
