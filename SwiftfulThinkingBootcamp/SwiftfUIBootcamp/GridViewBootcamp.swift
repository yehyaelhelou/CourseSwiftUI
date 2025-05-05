//
//  GridViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 5/3/25.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
            ForEach(0..<4) { rowIndex in
                GridRow {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + columnIndex + 1
                        
                        if cellNumber == 7 {
                            EmptyView()
//                            Color.green
//                                .gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            cell(number: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridCellAnchor(.trailing)
                                .gridColumnAlignment(
                                    cellNumber == 1 ? .trailing :
                                        cellNumber == 4 ? .leading :
                                            .center)
                        }
                    }
                }
            }
        }
        .padding()
    }
    
    private func cell(number: Int) -> some View {
        Text("\(number)")
            .font(.largeTitle)
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}

struct GridViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridViewBootcamp()
    }
}
