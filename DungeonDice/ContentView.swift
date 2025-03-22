//
//  ContentView.swift
//  DungeonDice
//
//  Created by Daniel Harris on 21/03/2025.
//

import SwiftUI

struct ContentView: View {
    enum Dice: Int, CaseIterable {
        case four = 4
        case six = 6
        case eight = 8
        case ten = 10
        case twelve = 12
        case twenty = 20
        case hundred = 100
        
        func roll() -> Int {
            return Int.random(in: 1...self.rawValue)
        }
    }
    
    @State private var resultMessage = ""
    
    var body: some View {
        VStack {
            Text("Dungeon Dice")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.red)
            
            Spacer()
            
            Text(resultMessage)
                .font(.largeTitle)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .frame(height: 150)
            
            Spacer()
            
            Group{
                ForEach(Dice.allCases, id: \.self) { dice in
                    Button("\(dice.rawValue)-sided") {
                        resultMessage = "You Rolled a \(dice.roll()) on a \(dice.rawValue)- sided dice"
                    }
                }
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            
            
            //            Group {
            //                HStack {
            //                    Button("\(Dice.four.rawValue)-sided") {
            //                        resultMessage = "You Rolled a \(Dice.four.roll()) on a \(Dice.four.rawValue)- sided dice"
            //                    }
            //
            //                    Spacer()
            //
            //                    Button("\(Dice.six.rawValue)-sided") {
            //                        resultMessage = "You Rolled a \(Dice.six.roll()) on a \(Dice.six.rawValue)- sided dice"
            //                    }
            //
            //                    Spacer()
            //
            //                    Button("\(Dice.eight.rawValue)-sided") {
            //                        resultMessage = "You Rolled a \(Dice.eight.roll()) on a \(Dice.eight.rawValue)- sided dice"
            //                    }
            //                }
            //                HStack {
            //                    Button("\(Dice.ten.rawValue)-sided") {
            //                        resultMessage = "You Rolled a \(Dice.ten.roll()) on a \(Dice.ten.rawValue)- sided dice"
            //                    }
            //
            //                    Spacer()
            //
            //                    Button("\(Dice.twelve.rawValue)-sided") {
            //                        resultMessage = "You Rolled a \(Dice.twelve.roll()) on a \(Dice.twelve.rawValue)- sided dice"
            //                    }
            //
            //                    Spacer()
            //
            //                    Button("\(Dice.twenty.rawValue)-sided") {
            //                        resultMessage = "You Rolled a \(Dice.twenty.roll()) on a \(Dice.twenty.rawValue)- sided dice"
            //                    }
            //                }
            //                Button("\(Dice.hundred.rawValue)-sided") {
            //                    resultMessage = "You Rolled a \(Dice.hundred.roll()) on a \(Dice.hundred.rawValue)- sided dice"
            //                }
            //            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

