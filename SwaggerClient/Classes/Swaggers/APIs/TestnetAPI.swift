//
// TestnetAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class TestnetAPI {
    /**
     Mint testnet funds

     - parameter body: (body) Player ID to receive the funds 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testnetMint(body: TestnetMintRequest, completion: @escaping ((_ data: MessageResponse?,_ error: Error?) -> Void)) {
        testnetMintWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Mint testnet funds
     - POST /testnet/mint
     - 

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "code" : 0,
  "type" : "type",
  "message" : "message"
}}]
     - parameter body: (body) Player ID to receive the funds 

     - returns: RequestBuilder<MessageResponse> 
     */
    open class func testnetMintWithRequestBuilder(body: TestnetMintRequest) -> RequestBuilder<MessageResponse> {
        let path = "/testnet/mint"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<MessageResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
