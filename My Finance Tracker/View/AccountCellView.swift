//
//  AccountCellView.swift
//  My Finance Tracker
//
//  Created by fardi Issihaka on 10/10/2022.
//

import SwiftUI

struct AccountCellView: View {
    
    let account: Account
    @State var isFavourite = false
    
    var body: some View {
        HStack {
            Image(account.iconName)
                .resizable()
                .padding(4)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(account.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text("Solde : \(String(format: "%.2f", account.amount)) €")
                    .font(.footnote)
                    .foregroundColor(Color(white: 0.4))
            }
            Spacer()
            Button {
                isFavourite.toggle()
            } label: {
                Image(systemName: isFavourite ? "star.fill" : "star")
                    .foregroundColor(isFavourite ? .yellow : Color(white: 0.4))
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
    }
}

struct AccountCellView_Previews: PreviewProvider {
    
    static let previewsAccount = Account(iconName: "icon_001", name: "PayPal", amount: 150.00)
    
    static var previews: some View {
        AccountCellView(account: previewsAccount)
            .padding()
            .background(Color("grey"))
            .previewLayout(.sizeThatFits)
    }
}
