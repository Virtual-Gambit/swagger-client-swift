//
// XummCustomBlob.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct XummCustomBlob: Codable {

    public var playerId: String
    public var roomId: String
    public var dealId: String
    public var roundCount: String

    public init(playerId: String, roomId: String, dealId: String, roundCount: String) {
        self.playerId = playerId
        self.roomId = roomId
        self.dealId = dealId
        self.roundCount = roundCount
    }


}
