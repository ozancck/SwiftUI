//
//  ViewController.swift
//  Nfc_Test
//
//  Created by Ozan Çiçek on 23.08.2024.
//

import CoreNFC
import UIKit

class ViewController: UIViewController, NFCTagReaderSessionDelegate {
    var nfcTagReaderSession: NFCTagReaderSession?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Diğer gerekli işlemler burada yapılabilir
    }

    func tagReaderSessionDidBecomeActive(_ session: NFCTagReaderSession) {
        print("Tag reader did become active")
        print("isReady: \(nfcTagReaderSession?.isReady ?? false)")
    }

    func tagReaderSession(_ session: NFCTagReaderSession, didInvalidateWithError error: Error) {
        print("Session invalidated with error: \(error.localizedDescription)")
    }

    func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [NFCTag]) {
        // Bu kısım artık çağrılacak!
        print("Tag detected!")
        print("Tags: \(tags)")

        // İlk tag'i seç
        if let firstTag = tags.first {
            session.connect(to: firstTag) { error in
                if let error = error {
                    print("Failed to connect to tag: \(error.localizedDescription)")
                    session.invalidate(errorMessage: "Connection failed.")
                    return
                }

                // Bağlandıktan sonra yapılacak işlemler burada olabilir
                print("Successfully connected to the tag.")
                session.invalidate()
            }
        }
    }

    @IBAction func clickedNFC(_ sender: Any) {
        nfcTagReaderSession = NFCTagReaderSession(pollingOption: [.iso14443], delegate: self)
        nfcTagReaderSession?.alertMessage = "Place the device on the inner cover of the passport"
        nfcTagReaderSession?.begin()
        print("NFC session started, isReady: \(nfcTagReaderSession?.isReady ?? false)")
    }
}
