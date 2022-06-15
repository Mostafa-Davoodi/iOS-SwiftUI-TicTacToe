//
//  MainView.swift
//  iOS-SwiftUI-TicTacToe
//
//  Created by Mostafa Davoodi on 6/14/22.
//

import SwiftUI

struct MainView: View {
		var body: some View {
			NavigationView {
				TabView {
					GameView()
						.tabItem {
							Label("Board", systemImage: "checkerboard.rectangle")
						}
					
					SettingView()
						.tabItem {
							Label("Setting", systemImage: "gear")
						}
				}
			}
		}
}

struct MainView_Previews: PreviewProvider {
		static var previews: some View {
				MainView()
		}
}
