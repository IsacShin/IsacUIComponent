//
//  SwiftUIView.swift
//  IsacKit
//
//  Created by shinisac on 8/5/25.
//

import SwiftUI

@available(iOS 14.0, *)
public struct IsacPresentModalView: View {
    private let contetnView: AnyView
    @Binding private var isPresented: Bool
    
    public init(contetnView: AnyView, isPresented: Binding<Bool>) {
        self.contetnView = contetnView
        self._isPresented = isPresented
    }
    
    public var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Spacer().frame(height: 10)
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .frame(width: 65, height: 6)
                    .foregroundColor(.black.opacity(0.58))
                Spacer().frame(height: 20)
                contetnView
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
        
    }
}

@available(iOS 14.0, *)
#Preview {
    IsacPresentModalView(contetnView: AnyView(Text("Hello, World!")
        .background(Color.white)),
                       isPresented: .constant(true))
                                                
}
