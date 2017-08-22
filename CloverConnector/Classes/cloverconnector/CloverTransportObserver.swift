//
//  CloverTransportObserver.swift
//  CloverConnector
//
//  
//  Copyright © 2017 Clover Network, Inc. All rights reserved.
//

import Foundation

protocol CloverTransportObserver : AnyObject{

    /// Device is there but not yet ready for use
    ///
    /// - Parameter transport: The transport instance being referenced
    func onDeviceConnected(_ transport:CloverTransport)
    
    /// Device is there and ready for use
    ///
    /// - Parameter transport: The transport instance being referenced
    func onDeviceReady(_ transport:CloverTransport)
    
    /// Device is not there anymore
    ///
    /// - Parameter transport: The transport instance being referenced
    func onDeviceDisconnected(_ transport:CloverTransport)
    
    /// Device experienced an error on the transport
    ///
    /// - Parameter errorEvent: Error event instance encapsulating the failure reason, code, and message
    func onDeviceError(_ errorEvent: CloverDeviceErrorEvent)
    
    func onMessage(_ message:String)
}
