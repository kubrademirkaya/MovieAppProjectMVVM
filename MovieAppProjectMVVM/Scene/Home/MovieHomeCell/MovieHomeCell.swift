//
//  MovieHomeCell.swift
//  MovieAppProjectMVVM
//
//  Created by Kübra Demirkaya on 24.03.2023.
//

import UIKit
import SnapKit

final class MovieHomeCell: UITableViewCell {
    
    // MARK: - UI Elements
    private let cellImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    private let cellNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    private let cellOverView: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // MARK: - Life Cycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // configure() fonsiyonunun içine eklenen her fonksiyon otomatik buraya da eklenmiş oluyor.
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Cell Identifier
    
    enum Identifier: String {
        case custom = "cell"
    }
}

extension MovieHomeCell {
    
    func configure() {
        cellSubViews()
    }
    
    func cellSubViews() {
        addSubview(cellImageView)
        addSubview(cellNameLabel)
        addSubview(cellOverView)
    }
}
