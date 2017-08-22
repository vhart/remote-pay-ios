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
        case noReaderConnected
        case deviceNotReady
        case missingPayment
    }

    public enum ConnectionFailureReason {
        case invalidSSLCertificateChain
        case expiredCertificateInChain
        case timeout
        case networkIsDown
        case connectionRefused
        case genericConnectionFailure(NSError)
        case noReaderConnected
    }

    public enum ValidationFailureReason {
        case keyPressRequired
    }

    case communication(CommunicationFailureReason)
    case connection(ConnectionFailureReason)
    case validation(ValidationFailureReason)
    case exception
}

extension CloverDeviceError {
    public enum ComparisonType {
        case communicationError
        case connectionError
        case validationError
        case exceptionError
    }
}

public func ==(lhs: CloverDeviceError, rhs: CloverDeviceError.ComparisonType) -> Bool {
    switch (lhs, rhs) {
    case (.communication(_), .communicationError): return true
    case (.connection(_), .connectionError): return true
    case (.validation(_), .validationError): return true
    case (.exception(_), .exceptionError): return true
    default: return false
    }
}

extension CloverDeviceError.ConnectionFailureReason {

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
