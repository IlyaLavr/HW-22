//
//  ViewController.swift
//  HW-22
//
//  Created by Илья on 01.12.2022.
//

import UIKit
import SnapKit
import CoreData

class ViewController: UIViewController {
    
    // MARK: - Elements
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Пользователи"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
   private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.backgroundColor = .lightGray
        textField.textAlignment = .center
        textField.placeholder = "Введите имя"
        textField.isHighlighted = true
        textField.layer.cornerRadius = 20
        return textField
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Добавить", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.layer.cornerRadius = 17
//        button.addTarget(self, action: #selector(findCards), for: .touchUpInside)
        return button
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.backgroundColor = .white
        tableView.tintColor = .blue
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.idetifier)
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarhy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarhy() {
        view.addSubview(label)
        view.addSubview(textField)
        view.addSubview(button)
        view.addSubview(tableView)
        
    }
    
    private func setupLayout() {
        
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.right.equalToSuperview().offset(-10)
            make.left.equalToSuperview().offset(10)
            make.height.equalTo(50)
        }

        textField.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(7)
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(view.snp.right).offset(-10)
            make.height.equalTo(70)
        }
        
        button.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.bottom).offset(15)
            make.left.equalTo(view.snp.left).offset(10)
            make.right.equalTo(view.snp.right).offset(-10)
            make.height.equalTo(70)
        }

        tableView.snp.makeConstraints { make in
            make.top.equalTo(button.snp.bottom).offset(20)
            make.left.equalTo(view.snp.left)
            make.right.equalTo(view.snp.right)
            make.bottom.equalTo(view.snp.bottom)
        }
    }
}

// MARK: - Extensions

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.idetifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        cell.name.text = "Валера Леонтьев"
        cell.image.image = UIImage(systemName: "chevron.right")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
