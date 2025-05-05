//
//  ContentUnavailableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 5/3/25.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "wifi.slash")
                .font(.system(size: 50))
                .foregroundColor(.gray)
            
            Text("No Internet Connection")
                .font(.title2)
                .bold()
            
            Text("Please connect to the internet and try again.")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGroupedBackground))
    }
}

struct ContentUnavailableViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContentUnavailableViewBootcamp()
    }
}
