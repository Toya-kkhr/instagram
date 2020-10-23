//
//  EditProfileViewController.swift
//  instagram
//
//  Created by 加古原　冬弥 on 2020/09/29.
//  Copyright © 2020 加古原　冬弥. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "保存",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSave))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "キャンセル",
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(didTapCancel))
    }
    
    @objc private func didTapSave() {
        
    }
    
    @objc private func didTapCancel() {
        
    }
    
    @objc private func didTapChangeProfilePicture() {
        let actionSheet = UIAlertController(title: "プロフィール写真",
                                            message: "プロフィール写真を変更",
                                            preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "写真を撮影する",style: .default,handler: { _ in
        }))
        actionSheet.addAction(UIAlertAction(title: "ライブラリから選択する", style: .default, handler: { _ in
        }))
        actionSheet.addAction(UIAlertAction(title: "キャンセル", style: .cancel, handler: nil))
        actionSheet.popoverPresentationController?.sourceView = view
        actionSheet.popoverPresentationController?.sourceRect = view.bounds
        
        present(actionSheet, animated: true)
        
    }
}
