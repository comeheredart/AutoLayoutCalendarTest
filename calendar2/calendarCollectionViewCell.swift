//
//  calendarCollectionViewCell.swift
//  calendar2
//
//  Created by JEN Lee on 2021/02/23.
//

import UIKit

class calendarCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "calendarCollectionViewCell"
    
    let dayLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.addSubview(dayLabel)
        dayLabel.frame = contentView.frame
    }
}
