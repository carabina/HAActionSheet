//
//  ViewController.swift
//  HAActionSheet
//
//  Created by hasanlsn on 08/05/2017.
//  Copyright (c) 2017 hasanlsn. All rights reserved.
//

import UIKit
import HAActionSheet

class ViewController: UIViewController {
  let data = ["Apple",
              "Orange",
              "Banana",
              "Berry"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func showAction(_ sender: Any) {
    let view = HAActionSheet(fromView: self.view, sourceData: data)
    view.buttonCornerRadius = 16
    view.delegate = self
    view.show()
  }
}

extension ViewController: HAActionSheetDelegate {
  /// optional
  func didCancel(_ pickerView: HAActionSheet) {
    print("Canceled")
  }
  
  /// required
  func haActionSheet(_ actionSheet: HAActionSheet, didSelectRowAt index: Int) {
    print("Selected item: \(data[index]) at index: \(index)")
  }
}
