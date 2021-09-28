//
//  CheckPermission.swift
//  Swift6Camera
//
//  Created by Takafumi Watanabe on 2021-09-27.
//

import Foundation
import Photos

class CheckPermission {
    
    func checkCamera() {
        
        PHPhotoLibrary.requestAuthorization { (status) in
            switch(status) {
                
            case.authorized:
                
                print("authorized")
                
            case.notDetermined:
                print("notDetermined")
                
            case.restricted:
                print("restricted")
                
            case.denied:
                print("denied")
                
            case.limited:
                print("limited")
                
            @unknown default:
                break
            }
        }
    }
}
