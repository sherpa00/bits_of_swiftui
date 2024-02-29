//
//  ActionSheetBootcamp.swift
//  swiftulThinking
//
//  Created by Chhewang Sherpa on 19/02/2024.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var backgroundColor: Color = .green;
    @State var showActionSheet: Bool = false;
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(edges: .all)
            
            VStack {
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("@username")
                    Spacer()
                    Button(
                        action: {
                            showActionSheet.toggle()
                        },label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(.primary)
                                .font(.title)
                        }
                    )
                }.padding()
                
                Rectangle()
                    .aspectRatio(1.2, contentMode: .fit)
            }
            .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        }
    }
    
    func getActionSheet() -> ActionSheet {
        return ActionSheet(
            title: Text("What to do here?"),
            message: Text("This is a message with action sheet"),
            buttons: [
                .default(Text("UPDATE"), action: {
                    backgroundColor = .blue
                }),
                .destructive(Text("DELETE"), action: {
                    backgroundColor = .red
                }),
                .cancel()
            ]
        )

    }
}

#Preview {
    ActionSheetBootcamp()
}
