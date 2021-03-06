//
// XummPayloadRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct XummPayloadRequest: Codable {

    public var userToken: String?
    public var options: XummOptions
    public var txjson: XummTxJson
    public var customMeta: XummCustomMeta?
    public var playerId: String

    public init(userToken: String? = nil, options: XummOptions, txjson: XummTxJson, customMeta: XummCustomMeta? = nil, playerId: String) {
        self.userToken = userToken
        self.options = options
        self.txjson = txjson
        self.customMeta = customMeta
        self.playerId = playerId
    }

    public enum CodingKeys: String, CodingKey { 
        case userToken = "user_token"
        case options
        case txjson
        case customMeta = "custom_meta"
        case playerId
    }

}
