//
//  GameSquareView.swift
//  iOS-SwiftUI-TicTacToe
//
//  Created by Mostafa Davoodi on 6/14/22.
//

import SwiftUI

struct GameSquareView: View {
	var proxy: GeometryProxy
	var body: some View {
		Circle()
			.foregroundColor(.red).opacity(0.5)
			.frame(
				width: proxy.size.width/3 - 15,
				height: proxy.size.width/3 - 15
			)
	}
}

struct GameSquareView_Previews: PreviewProvider {
	static var previews: some View {
		GeometryReader { geomtry in
			GameSquareView(proxy: geomtry)
		}
	}
}
