//
//  ThirdTabView.swift
//  otus-hw-1
//
//  Created by Dmitriy Borovikov on 09.09.2024.
//

import SwiftUI

struct ThirdTabView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"ThirdTabView"/*@END_MENU_TOKEN@*/)
            Spacer()
            SpinnerView(title: "Test\nUIView")
            Spacer()
            ShowTestAlert()
                .padding(.bottom)
        }
        .tag(TabList.third)
        .tabItem {
            Label(TabList.third.description, systemImage: "3.circle.fill")
        }
    }
}

#Preview {
    ThirdTabView()
}

struct ShowTestAlert: View {
    @State var presented: Bool = false
    var body: some View {
        Button("Just show alert") {
            presented = true
        }
        .alert(isPresented: $presented) {
            Alert(title: Text("Alert title"),
                  message: Text("Explain message"),
                  primaryButton: .default(Text("Ok"), action: {
                print("Ok action")
            }), secondaryButton: .cancel(Text("Cancel"), action: {
                print("Cancel action")
            }))
        }
    }
}
