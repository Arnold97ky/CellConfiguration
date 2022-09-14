//
//  CustomTableViewCell.swift
//  ModernCellConfig
//
//  Created by ArnoldKy on 11/4/20.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let identifier = "CustomTableViewCell"

    override func updateConfiguration(using state: UICellConfigurationState) {
        super.updateConfiguration(using: state)

        var configuration = defaultContentConfiguration().updated(for: state)
        configuration.text = "Hello World"
        configuration.image = UIImage(systemName: "bell")

        var backgroundConfig = backgroundConfiguration?.updated(for: state)
        backgroundConfig?.backgroundColor = .purple

        if state.isHighlighted || state.isSelected {
            backgroundConfig?.backgroundColor = .orange
            configuration.textProperties.color = .red
            configuration.imageProperties.tintColor = .yellow
        }

        contentConfiguration = configuration
        backgroundConfiguration = backgroundConfig
    }
}
