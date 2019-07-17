//
//  NoticiasHomeView.swift
//  NoticiasModule
//
//  Created by Jeferson Jesus on 17/07/19.
//  Copyright © 2019 Cubos. All rights reserved.
//

import UIKit
import SnapKit

class NoticiasHomeView: UIView {

    let container = UIStackView()
    let label = UILabel()
    let button = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        backgroundColor = .white
        container.backgroundColor = .white
        addSubview(container)
        container.axis = .vertical
        container.spacing = 16
        container.addArrangedSubview(label)
        container.addArrangedSubview(button)
        
        setupLabel()
        setupButton()
        
    }
    
    private func setupLabel() {
        label.text = "Noticias"
    }
    
    private func setupButton() {
        button.setTitle("Voltar", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.blue, for: .normal)
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        if superview != nil {
            self.snp.makeConstraints({ make in
                make.center.equalToSuperview()
            })
            container.snp.makeConstraints({make in
                make.edges.equalToSuperview()
            })
        }
    }
}
