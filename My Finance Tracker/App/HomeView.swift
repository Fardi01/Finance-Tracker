//
//  HomeView.swift
//  My Finance Tracker
//
//  Created by fardi Issihaka on 08/10/2022.
//

import SwiftUI

struct HomeView: View {
    
    // La somme de tous les comptes ajouté dans mes comptes
    var totalAmount = Account.sampleData.map {$0.amount}.reduce(0, +)
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                
                VStack(spacing: 8) {
                    Text("Solde total :")
                    Text("\(String(format: "%.2F", totalAmount)) €")
                        .font(.system(size: 32, weight: .bold))
                }
                
                VStack(alignment: .leading) {
                    Text("Mes comptes")
                        .font(.title2)
                        .fontWeight(.bold)
                    if Account.sampleData.count != 0 {
                        VStack(spacing: 16) {
                            ForEach(Account.sampleData) { account in
                                AccountCellView(account: account)
                            }
                        }
                    } else {
                        Text("Ajoutez un compte")
                            .padding(32)
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding(24)
            }
        }
        .background(Color("grey"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
