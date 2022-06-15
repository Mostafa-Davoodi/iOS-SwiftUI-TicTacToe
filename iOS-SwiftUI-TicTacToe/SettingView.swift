//
//  SettingView.swift
//  iOS-SwiftUI-TicTacToe
//
//  Created by Mostafa Davoodi on 6/14/22.
//

import SwiftUI

struct SettingView: View {
	var body: some View {
			
		List {
			Section {
				MenuView(title: "Level")
				MenuView(title: "Mode")
			}
			
			
			Section {
				MenuView(title: "Language")
				MenuView(title: "FAQ")
				MenuView(title: "About Us")
			}
		}
	}
}

struct MenuView: View {
	var title: String
	var body: some View {
		NavigationLink {
			Text(title)
		} label: {
			Text(title)
		}

	}
	
}

struct SettingView_Previews: PreviewProvider {
		static var previews: some View {
				SettingView()
		}
}
