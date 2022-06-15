//
//  GameView.swift
//  iOS-SwiftUI-TicTacToe
//
//  Created by Mostafa Davoodi on 6/14/22.
//

import SwiftUI

struct GameView: View {
	
	@StateObject private var viewModel = GameViewModel()
	
	var body: some View {
		
		GeometryReader { geometry in
			VStack(spacing: 36) {
				Spacer()
				
				Text("Board")
					.font(.largeTitle)
					.foregroundColor(.gray)
				
				LazyVGrid(columns: viewModel.columns) {
					ForEach(0..<9) { i in
						ZStack {
							GameSquareView(proxy: geometry)
							PlayerIndicator(systemImageName: viewModel.moves[i]?.indicator ?? "")
						}.onTapGesture {
							viewModel.processPlayerMove(for: i)
						}
					}
				}
				
				
				VStack(alignment: .center, spacing: 24) {
					Label("Human", systemImage: "xmark")
						.font(.body)
						.foregroundColor(.indigo)
					
					Label("Computer", systemImage: "circle")
						.font(.body)
						.foregroundColor(.indigo)
				}
				
				
				Spacer()
			}
			.disabled(viewModel.isGameboardDisabled)
			.padding()
			.alert(item: $viewModel.alertItem) { alertItem in
				Alert(title: alertItem.title,
							message: alertItem.message,
							dismissButton: .default(alertItem.buttonTitle, action: viewModel.resetGame))
			}
		}
		
	}
}

struct GameBoard_Previews: PreviewProvider {
		static var previews: some View {
				GameView()
		}
}
