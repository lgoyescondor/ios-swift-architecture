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
    
    func execute(params:Params, onSuccess : @escaping (Response) -> Void ,onError: @escaping (Error) -> Void ) -> Disposable
}
