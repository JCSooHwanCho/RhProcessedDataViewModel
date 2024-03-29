//
//  ProcessedDataViewModel.swift
//  RacingImageViewer
//
//  Created by JCSooHwanCho on 2019/10/03.
//  Copyright © 2019 JCSooHwanCho. All rights reserved.
//

import Foundation
import RxSwift
import RxRelay

public class ProcessedDataViewModel<Element>: ProcessedDataViewModelType {
    public typealias Element = Element

    // MARK: - Property
    public var itemRelay: PublishRelay<Element> = PublishRelay()
    public var requestRelay: PublishRelay<(Bool, Error?)> = PublishRelay()
    public var command: ProcessingCommand? {
        didSet {
            self.loadData()
        }
    }
    public init() { }
    // MARK: - Private Property
    private var disposeBag = DisposeBag()
    private let lock = NSRecursiveLock()

    // MARK: - Loading Method
    public func loadData() {
        let loader = DataCachedLoader()

        guard let command = self.command,
            let url = command.requestURL else {
                return
        }

        let loadObservable = loader.loadData(withURL: url)

        loadObservable
            .observeOn(ConcurrentDispatchQueueScheduler.init(qos: .background))
            .compactMap { value -> Element? in
                // 데이터를 가공한다.
                // 만약 원하는 데이터 타입과 command가 반환하는 데이터 타입이 다르면
                // 여기서 걸러진다.
                command.execute(withData: value)
        }.subscribe { event in
            switch event {
            case let .next(value):
                self.lock.lock(); defer { self.lock.unlock() }
                self.itemRelay.accept(value)
                self.requestRelay.accept((true, nil))
            case let .error(error):
                self.lock.lock(); defer { self.lock.unlock() }
                self.requestRelay.accept((false, error))
            case .completed:
                break
            }
        }.disposed(by: disposeBag)
    }

    deinit {
        disposeBag = DisposeBag()
    }
}
