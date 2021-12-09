//
//  Reducer.swift
//  TCA Test
//
//  Created by 大林亮芽 on 2021/12/09.
//

import Combine

public struct Reducer<State, Action> {
    private let reducer: (inout State, Action) -> AnyPublisher<Action, Never>
    
    public func callAsFunction(
        _ state: inout State,
        _ action: Action
    ) -> AnyPublisher<Action, Never> {
        self.reducer(&state, action)
    }
}
