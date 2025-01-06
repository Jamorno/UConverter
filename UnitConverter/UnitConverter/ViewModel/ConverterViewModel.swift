//
//  ConverterViewModel.swift
//  UnitConverter
//
//  Created by Jamorn Suttipong on 6/1/2568 BE.
//

import Foundation

class ConverterViewModel: ObservableObject {
    
    @Published var celsius: String = "0"
    @Published var fahrenheit: String = ""
    
    func celsiusToFahrenheit() {
        if let celsiusValue = Int(celsius) {
            fahrenheit = String((celsiusValue * 9/5) + 32)
        }
    }
    
    func FahrenheitToCelsius() {
        if let fahrenheitValue = Int(fahrenheit) {
            celsius = String((fahrenheitValue - 32) * 5/9)
        }
    }
    
    func resetValue() {
        fahrenheit = ""
        celsius = "0"
    }
}
