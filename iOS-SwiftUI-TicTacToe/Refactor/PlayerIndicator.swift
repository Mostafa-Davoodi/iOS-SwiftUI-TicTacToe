//
//  PlayerIndicator.swift
//  iOS-SwiftUI-TicTacToe
//
//  Created by Mostafa Davoodi on 6/14/22.
//

import SwiftUI

struct PlayerIndicator: View {
	var systemImageName: String
	var body: some View {
		Image(systemName: systemImageName)
			.resizable()
			.frame(width: 40, height: 40)
			.foregroundColor(.white)
	}
}

struct PlayerIndicator_Previews: PreviewProvider {
		static var previews: some View {
				PlayerIndicator(systemImageName: "circle")
		}
}
