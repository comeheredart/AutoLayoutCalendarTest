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
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let scheduleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 10)
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
        contentView.addSubview(scheduleLabel)
        
        addContraints()

    }
    
    private func addContraints() {
        NSLayoutConstraint.activate([
            dayLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            dayLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            scheduleLabel.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 20),
            scheduleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            scheduleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor)
        ])
    }
}
