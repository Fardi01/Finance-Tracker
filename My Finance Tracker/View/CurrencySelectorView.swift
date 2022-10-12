//
//  CurrencySelectorView.swift
//  My Finance Tracker
//
//  Created by fardi Issihaka on 12/10/2022.
//

import SwiftUI

struct CurrencySelectorView: View {
    
    // J'accède à toutes les valeurs de l'enum Currency grace à allCases
    private let currencies = Currency.allCases
    @State private var selectedCurrency: Currency = .euro
    @State private var isSelectedMode = false
    
    var body: some View {
        // j'utilise une Zstack pour empiler les symboles au dessus des autres
        ZStack {
            // Je crée une boucle qui parcours tous les cas d'images
            ForEach(currencies.indices) { index in
                // pour chaque image,
                Image(systemName: selectedCurrency == currencies[index] ? currencies[index].filledIconName : currencies[index].iconName)
                    .font(.system(size: 32))
                // Je verifie si la Zstack est selectionner, alors je décale les symbole à gauche
                    .offset(x: isSelectedMode ? -CGFloat(index) * 40 : 0)
                // J'applique une opacité
                    .opacity(selectedCurrency ==  currencies[index] || isSelectedMode ? 1 : 0)
                // J'applique un tapGesture et qui permet de faire un toggle à la valeur "isSelected"
                    .onTapGesture {
                        // Si je suis en mode selected, alors la valeur de currency est égal à l'index sélectionné
                        if isSelectedMode {
                            selectedCurrency = currencies[index]
                        }
                        withAnimation(.easeInOut(duration: 0.2)) {
                            isSelectedMode.toggle()
                        }
                    }
            }
        }
    }
}

struct CurrencySelectorView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencySelectorView()
    }
}
