//
//  DataLoader.swift
//  RacingImageViewer
//
//  Created by JCSooHwanCho on 2019/10/03.
//  Copyright © 2019 JCSooHwanCho. All rights reserved.
//

import Foundation
import RxSwift

// 지정된 URL에 대해서 Data를 가져오는 Loader
class DataLoader: DataLoaderType {

    // MARK: - Loading Method
    public func loadData(withURL url: URL) -> Observable<Data> {
        let observable = Observable<Data>.create { observable in
            do {
                let data = try Data(contentsOf: url)

                observable.onNext(data)
                observable.onCompleted()
            } catch {
                observable.onError(error)
            }

            return Disposables.create()
        }
        return observable
            .subscribeOn(ConcurrentDispatchQueueScheduler(qos: .userInitiated))
    }
}
