//
//  SwiftUIView.swift
//  
//
//  Created by Taichi Arima on 2021/11/11.
//

import SwiftUI

/// Ref: https://qiita.com/chocoyama/items/1cb7040f0e717406a6f4#uiviewrepresentable%E3%81%A8mask%E3%82%92%E7%B5%84%E3%81%BF%E5%90%88%E3%82%8F%E3%81%9B%E3%82%8B

public struct PartlyRoundedCornerView: UIViewRepresentable {
    let cornerRadius: CGFloat
    let maskedCorners: CACornerMask

    func makeUIView(context: UIViewRepresentableContext<PartlyRoundedCornerView>) -> UIView {
        // 引数で受け取った値を利用して、一部の角のみを丸くしたViewを作成する
        let uiView = UIView()
        uiView.layer.cornerRadius = cornerRadius
        uiView.layer.maskedCorners = maskedCorners
        uiView.backgroundColor = .white
        return uiView
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PartlyRoundedCornerView>) {}
}

struct PartlyRoundedCornerView_Previews: PreviewProvider {
    static var previews: some View {
        PartlyRoundedCornerView(cornerRadius: 30, maskedCorners: .layerMinXMinYCorner)
    }
}
