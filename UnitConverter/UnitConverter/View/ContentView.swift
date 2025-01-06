//
//  ContentView.swift
//  UnitConverter
//
//  Created by Jamorn Suttipong on 6/1/2568 BE.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ConverterViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    //fahrenheit
                    ZStack {
                        VStack(spacing: 0) {
                            TextField("0", text: $viewModel.fahrenheit)
                                .font(.system(size: 60))
                                .multilineTextAlignment(.center)
                            Text("°F")
                                .font(.title)
                        }
                        .fontWeight(.semibold)
                        .frame(width: 120, height: 150)
                        .background(.purple.opacity(0.7))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    }
                    
                    Spacer()
                    
                    Image(systemName: "arrowshape.right.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 46, height: 46)
                    
                    Spacer()
                    
                    //celsius
                    ZStack {
                        VStack(spacing: 0) {
                            Text("\(viewModel.celsius)")
                                .font(.system(size: 60))
                            Text("°C")
                                .font(.title)
                        }
                        .fontWeight(.semibold)
                        .frame(width: 120, height: 150)
                        .background(.blue.opacity(0.7))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    }
                }
            }
            .navigationTitle("UConverter")
            .padding(.horizontal, 35)
            
            //converter and reset button
            Button {
                if viewModel.fahrenheit == "" || viewModel.celsius == "0" {
                    viewModel.FahrenheitToCelsius()
                } else {
                    viewModel.resetValue()
                }
            } label: {
                Text(viewModel.fahrenheit == "" || viewModel.celsius == "0" ? "Converter" : "RESET")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(viewModel.fahrenheit == "" || viewModel.celsius == "0" ? .purple : .blue)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
