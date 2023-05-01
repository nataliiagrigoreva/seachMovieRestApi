//
//  MovieTableViewCell.swift
//  m18
//
//  Created by Nataly on 19.03.2023.
//

import UIKit
import SnapKit

class MovieTableViewCell: UITableViewCell {
    
    let posterImageView = UIImageView()
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        posterImageView.contentMode = .scaleAspectFit
        contentView.addSubview(posterImageView)
        posterImageView.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview().inset(10)
            make.width.equalTo(80)
        }
        
        titleLabel.numberOfLines = 0
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(posterImageView)
            make.leading.equalTo(posterImageView.snp.trailing).offset(10)
            make.trailing.equalToSuperview().inset(10)
        }
        
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        contentView.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.leading.trailing.equalTo(titleLabel)
            make.bottom.equalToSuperview().inset(10)
        }
    }
    
}

