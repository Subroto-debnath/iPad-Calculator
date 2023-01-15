//
//  ContentView.swift
//  Calculator
//
//  Created by Subroto Debnath on 2023-01-11.
//

import SwiftUI
import MathExpression

struct ContentView: View {
    @State private var currentText:String = ""
    @State private var result:String = ""
    @State private var braketCount:Int = 0
    
    var body: some View {
        VStack {
            TextField("...", text: $currentText)
                .customTextField(fontSize: 30)
            TextField("", text: $result)
                .customTextField(fontSize: 80)
                .multilineTextAlignment(.trailing)
            HStack {
                Button{
                    currentText = ""
                    result = ""
                    braketCount = 0
                } label: {
                    Text("AC").customButtonText(color: 0x006666)
                }
                Button{
                    if(currentText.last == "*" || currentText.last == "/"){
                        currentText = currentText + "("
                        braketCount += 1
                    }
                    else if(currentText.last == "."){
                        
                    }
                    else if(braketCount>0) {
                        currentText = currentText + ")"
                        braketCount -= 1
                    }
                    
                } label: {
                    Text("(  )").customButtonText(color: 0xcc9900)
                }
                Button{
                    currentText = String(currentText.dropLast())
                    result = calculateResult(currText: currentText)
                } label: {
                    Image("ios-delete-icon-14")
                        .background(Color.init(hex:0xcc9900))
                        .frame(width: UIScreen.main.bounds.width/4.63,height: UIScreen.main.bounds.height/7.41)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                }
                Button{
                    currentText = currentText + "/"
                } label: {
                    Text("/").customButtonText(color: 0xcc9900)
                }
            }
            .buttonStyle(.plain)
            HStack {
                Button{
                    currentText = currentText + "7"
                    result = calculateResult(currText: currentText)
                    
                } label: {
                    Text("7").customButtonText(color: 0x9966ff)
                }
                Button{
                    currentText = currentText + "8"
                    result = calculateResult(currText: currentText)
                } label: {
                    Text("8").customButtonText(color: 0x9966ff)
                }
                Button{
                    currentText = currentText + "9"
                    result = calculateResult(currText: currentText)
                } label: {
                    Text("9").customButtonText(color: 0x9966ff)
                }
                Button{
                    if(currentText.last != "*"){
                        currentText = currentText + "*"
                    }
                    
                } label: {
                    Text("x").customButtonText(color: 0xcc9900)
                }
            }
            .buttonStyle(.plain)
            HStack {
                Button{
                    currentText = currentText + "4"
                    result = calculateResult(currText: currentText)
                } label: {
                    Text("4").customButtonText(color: 0x9966ff)
                }
                Button{
                    currentText = currentText + "5"
                    result = calculateResult(currText: currentText)
                } label: {
                    Text("5").customButtonText(color: 0x9966ff)
                }
                Button{
                    currentText = currentText + "6"
                    result = calculateResult(currText: currentText)
                } label: {
                    Text("6").customButtonText(color: 0x9966ff)
                }
                Button{
                    currentText = currentText + "-"
                } label: {
                    Text("-").customButtonText(color: 0xcc9900)
                }
            }
            .buttonStyle(.plain)
            HStack {
                Button{
                    currentText = currentText + "1"
                    result = calculateResult(currText: currentText)
                } label: {
                    Text("1").customButtonText(color: 0x9966ff)
                }
                Button{
                    currentText = currentText + "2"
                    result = calculateResult(currText: currentText)
                } label: {
                    Text("2").customButtonText(color: 0x9966ff)
                }
                Button{
                    currentText = currentText + "3"
                    result = calculateResult(currText: currentText)
                } label: {
                    Text("3").customButtonText(color: 0x9966ff)
                }
                Button{
                    currentText = currentText + "+"
                    
                } label: {
                    Text("+").customButtonText(color: 0xcc9900)
                }
            }
            .buttonStyle(.plain)
            HStack {
                Button{
                    currentText = currentText + "0"
                    result = calculateResult(currText: currentText)
                } label: {
                    Text("0").customButtonText(color: 0x9966ff)
                }
                Button{
                    currentText = currentText + "."
                } label: {
                    Text(".").customButtonText(color: 0x9966ff)
                }
                Button{
                    result = calculateResult(currText: currentText)
                    braketCount = 0
                } label: {
                    Text("=").frame(width: UIScreen.main.bounds.width/4.63*2,height: UIScreen.main.bounds.height/7.41) // width = 180, Height = 150
                        .foregroundColor(.white)
                        .background(Color.init(hex: 0xff9966))
                        .cornerRadius(20)
                        .font(.system(size: 80))
                }
            }
            .buttonStyle(.plain)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


