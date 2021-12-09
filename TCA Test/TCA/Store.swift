//
//  Store.swift
//  TCA Test
//
//  Created by 大林亮芽 on 2021/12/09.
//

import Combine

public final class Store<State, Action> {
    
    @Published private(set) var state: State
    private let reducer: Reducer<State, Action>
    
    public init(initialState: State, reducer: Reducer<State, Action>) {
        self.state = initialState
        self.reducer = reducer
    }
    
    func send(_ action: Action) {
        let effect = self.reducer(&self.state, action)
    }
}
