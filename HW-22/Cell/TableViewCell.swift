//
//  TableViewCell.swift
//  HW-22
//
//  Created by Илья on 01.12.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    static let idetifier = "TableViewCell"
    
    // MARK: - Elements
    
    var image: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 1
        return imageView
    }()
    
    var name: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.numberOfLines = 3
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return label
    }()
    
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: TableViewCell.idetifier)
        setupHierarhy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
    
    // MARK: - Setup
    
    private func setupHierarhy() {
        addSubview(image)
        addSubview(name)
       
    }
    
    private func setupLayout() {
        
        image.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(12)
            make.left.equalTo(contentView.snp.right).offset(330)
            make.height.equalTo(20)
        }
        
        name.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(12)
            make.left.equalTo(contentView.snp.left).offset(15)
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        name.text = nil
        image.image = nil
    }
      
    
}
