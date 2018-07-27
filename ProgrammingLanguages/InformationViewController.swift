//
//  InformationViewController.swift
//  ProgrammingLanguages
//
//  Created by Hamada Mouhamed on 1/15/18.
//  Copyright © 2018 Hamada Mouhamed. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {
    
    var Receiverinformation : ProgrammingLanguageObject!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var LabelView: UILabel!
    @IBOutlet weak var MyTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTextView.text = Receiverinformation.About
        ImageView.image = Receiverinformation.Image
        LabelView.text = Receiverinformation.Name
    }
    @IBOutlet weak var AllHeight: NSLayoutConstraint!
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let fixedWidth = MyTextView.frame.size.height
        MyTextView.sizeThatFits(CGSize(width: fixedWidth , height: CGFloat.greatestFiniteMagnitude))
        let newSize = MyTextView.sizeThatFits(CGSize(width: fixedWidth , height: CGFloat.greatestFiniteMagnitude))
        var newFrame = MyTextView.frame
        newFrame.size = CGSize(width: max(newSize.width , fixedWidth), height: newSize.height)
        AllHeight.constant = newFrame.size.height + 320
        view.layoutIfNeeded()
    }
    var ActivityController : UIActivityViewController!
    @IBAction func ShareButtonAction(_ sender: UIBarButtonItem) {
        let ImageToShare : UIImage = ImageView.image!
        let TextToShare : String = LabelView.text! + " : " + MyTextView.text!
        ActivityController = UIActivityViewController(activityItems: [ImageToShare,TextToShare], applicationActivities: nil)
        //ActivityController.excludedActivityTypes = [UIActivityType.print,UIActivityType.postToWeibo,UIActivityType.copyToPasteboard,UIActivityType.addToReadingList,UIActivityType.postToVimeo]
        self.present(ActivityController, animated: true, completion: nil)
    }
}
