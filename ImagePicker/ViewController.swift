//
//  ViewController.swift
//  ImagePicker
//
//  Created by rd on 15/08/21.
//  Copyright © 2021 vishnu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickImage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        }


    @IBAction func pickImageButtonClicked(_ sender: UIButton) {
        
        let imageController = UIImagePickerController()
            imageController.delegate = self
            imageController.allowsEditing = true
            imageController.sourceType = UIImagePickerController.SourceType.photoLibrary
            self.present(imageController, animated: true, completion: nil)
        
        }
        
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            //        print("\(info)")
            if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage{
                imageView.image = image }
            
            dismiss(animated: true, completion: nil)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
    }


