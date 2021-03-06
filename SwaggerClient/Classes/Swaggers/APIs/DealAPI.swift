//
// DealAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class DealAPI {
    /**
     Delploy a new deal

     - parameter body: (body) Player ID of the new dealer 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func dealDeploy(body: DealDeployRequest, completion: @escaping ((_ data: MessageResponse?,_ error: Error?) -> Void)) {
        dealDeployWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delploy a new deal
     - POST /deal/deploy
     - 

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "code" : 0,
  "type" : "type",
  "message" : "message"
}}]
     - parameter body: (body) Player ID of the new dealer 

     - returns: RequestBuilder<MessageResponse> 
     */
    open class func dealDeployWithRequestBuilder(body: DealDeployRequest) -> RequestBuilder<MessageResponse> {
        let path = "/deal/deploy"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<MessageResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
