//
//  ConfigErrorMessage.swift
//  CloverSDKRemotepay
//
//  
//  Copyright © 2017 Clover Network, Inc. All rights reserved.
//

import Foundation
import Starscream

@objc
public class CloverDeviceErrorEvent : NSObject {

    public private(set) var error: CloverDeviceError
    public private(set) var code:Int
    public private(set) var message:String
    
    public init(errorType:CloverDeviceError, code:Int, message:String) {
        self.error = errorType
        self.code = code
        self.message = message
        super.init()
    }
}

public enum CloverDeviceError: ErrorType
{
    public enum CommunicationFailureReason {
        case invalidSSLCertificateChain
        case expiredCertificateInChain
        case timeout
        case networkIsDown
        case connectionRefused
        case genericConnectionFailure(NSError)
        case noReaderConnected
        case deviceNotReady
        case missingPayment
    }

    public enum ValidationFailureReason {
        case keyPressRequired
    }

    case communication(CommunicationFailureReason)
    case validation(ValidationFailureReason)
    case exception
}

extension CloverDeviceError.CommunicationFailureReason {

    init(error: NSError) {
        switch (error.domain, error.code) {
        case (NSOSStatusErrorDomain, Int(errSSLXCertChainInvalid)):
            self = .invalidSSLCertificateChain
        case (NSOSStatusErrorDomain, Int(errSSLCertExpired)):
            self = .expiredCertificateInChain
        case (WebSocket.ErrorDomain, 2):
            self = .timeout
        case (NSPOSIXErrorDomain, Int(POSIXError.ECONNREFUSED.rawValue)):
            self = .connectionRefused
        case (NSPOSIXErrorDomain, Int(POSIXError.ENETDOWN.rawValue)):
            self = .networkIsDown
        default:
            self = .genericConnectionFailure(error)
        }
    }
}
