//
//  ObservableInteractor.swift
//  TestArchitecture
//
//  Created by Luis Goyes on 9/6/18.
//  Copyright © 2018 Luis Goyes. All rights reserved.
//

import Foundation
import RxSwift

protocol ObservableInteractor: Interactor{
    
    func buildUseCase(params:Params)-> Observable<Response>
}


extension ObservableInteractor {
    func execute(params:Params, onSuccess : @escaping (Response) -> Void ,onError: @escaping (Error) -> Void)  -> Disposable {
        return self.buildUseCase(params: params).subscribe(onNext: onSuccess,
                                                           onError: onError)
    }
}
