//
//  Interactor.swift
//  TestArchitecture
//
//  Created by Luis Goyes on 9/6/18.
//  Copyright © 2018 Luis Goyes. All rights reserved.
//

import Foundation
import RxSwift

protocol Interactor{
    
    associatedtype Response
    associatedtype Params
    
    func buildUseCase(params:Params)-> Observable<Response>
    
    func execute(params:Params, onSuccess: @escaping (Response) -> Void, onError: @escaping (Error) -> Void ) -> Disposable
}

extension Interactor {
    
    func execute(params:Params, onSuccess: @escaping (Response) -> Void, onError: @escaping (Error) -> Void ) -> Disposable {
        return self.buildUseCase(params: params).subscribe(onNext: onSuccess,
                                                           onError: onError)
    }
}
