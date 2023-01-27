//
//  PickerColor.swift
//  Alina
//
//  Created by Dmitry on 15/12/2022.
//

import SwiftUI


struct CustomSegmentedViewUse: View {
    @State private var selectedIndex = 0
    private var selections =  ["Steam Guard", "Confirmations",]
    var body: some View {
        NavigationStack {
            VStack {
                CustomSegmentedView($selectedIndex, selections: selections)
                Text("Selected: \(selections[selectedIndex])")
                Spacer()
            }
           
        }
    }
}
struct CustomSegmentedView: View {
    
    @Binding var currentIndex: Int
    var selections: [String]
    
    init(_ currentIndex: Binding<Int>, selections: [String]) {
        self._currentIndex = currentIndex
        self.selections = selections
        UISegmentedControl.appearance().selectedSegmentTintColor = .color("1C202C")
        UISegmentedControl.appearance().backgroundColor =
        UIColor(Color.color("2F3548"))
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(Color.white) ], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(Color.color("7B8D9D"))], for: .normal)
    }
    
    var body: some View {
        VStack {
            Picker("", selection: $currentIndex) {
                ForEach(selections.indices, id: \.self) { index in
                    Text(selections[index])
                        .tag(index)
                        .foregroundColor(Color.white)
                }
            }
            .pickerStyle(.segmented)
            .tint(.color("7B8D9D"))
        }
        .padding()
    }
}

struct CustomSegmentedView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSegmentedViewUse()
    }
}
