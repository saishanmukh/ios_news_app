//
//  NewPostViewController.swift
//  News_App_iOS
//
//  Created by student on 5/1/22.
//

import UIKit

class NewPostViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var newPostImageOutlet: UIImageView!
    @IBOutlet weak var imageUploadButton: UIButton!
    @IBAction func uploadButton(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    var _image = UIImage()
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image =  info[.editedImage] as? UIImage else {return}
        
        _image = image
        newPostImageOutlet.image = _image
        
        dismiss(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
