//
// XummWebhookPayload.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct XummWebhookPayload: Codable {

    public var payloadUuidv4: String
    public var referenceCallUuidv4: String
    public var signed: Bool
    public var userToken: Bool
    public var returnUrl: XummReturnUrl

    public init(payloadUuidv4: String, referenceCallUuidv4: String, signed: Bool, userToken: Bool, returnUrl: XummReturnUrl) {
        self.payloadUuidv4 = payloadUuidv4
        self.referenceCallUuidv4 = referenceCallUuidv4
        self.signed = signed
        self.userToken = userToken
        self.returnUrl = returnUrl
    }

    public enum CodingKeys: String, CodingKey { 
        case payloadUuidv4 = "payload_uuidv4"
        case referenceCallUuidv4 = "reference_call_uuidv4"
        case signed
        case userToken = "user_token"
        case returnUrl = "return_url"
    }

}
