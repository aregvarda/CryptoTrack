//
//  CryptoTableViewCell.swift
//  CryptoTrack
//
//  Created by Геворг on 14.12.2021.
//

import UIKit

struct CryptoTableViewCellViewModel {
    let name: String
    let symbol: String
    let price: String
    let iconUrl: URL?
}

class CryptoTableViewCell: UITableViewCell {
    static let identifier = "CryptoTableViewCell"
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .medium)
        return label
    }()
    
    private let symbolLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .regular)
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGreen
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(nameLabel)
        contentView.addSubview(symbolLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(iconImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let size: CGFloat = contentView.frame.size.height / 1.1
        iconImageView.frame = CGRect(
            x: 20,
            y: (contentView.frame.size.height-size)/2,
            width: size,
            height: size
        )
        
        nameLabel.sizeToFit()
        priceLabel.sizeToFit()
        symbolLabel.sizeToFit()
        
        nameLabel.frame = CGRect(
            x: 30 + size,
            y: 0,
            width: contentView.frame.size.width / 2,
            height: contentView.frame.size.height / 2
        )
        
        symbolLabel.frame = CGRect(
            x: 30 + size,
            y: contentView.frame.size.height / 2,
            width: contentView.frame.size.width / 2,
            height: contentView.frame.size.height / 2
        )
        
        priceLabel.frame = CGRect(
            x: contentView.frame.size.width / 2,
            y: 0,
            width: (contentView.frame.size.width / 2) - 15,
            height: contentView.frame.size.height
        )
    }
    
    func configure(with viewModel: CryptoTableViewCellViewModel) {
        nameLabel.text = viewModel.name
        priceLabel.text = viewModel.price
        symbolLabel.text = viewModel.symbol
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
