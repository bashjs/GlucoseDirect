//
//  InMemoryAppState.swift
//  LibreDirect
//

import Combine
import Foundation

// MARK: - PreviewAppState

struct InMemoryAppState: AppState {
    // MARK: Lifecycle

    init() {}

    // MARK: Internal

    var alarmHigh: Int = 160
    var alarmLow: Int = 80
    var alarmSnoozeUntil: Date?
    var chartShowLines = false
    var connectionError: String? = "Timeout"
    var connectionErrorTimestamp: Date? = Date()
    var connectionState: SensorConnectionState = .disconnected
    var glucoseUnit = GlucoseUnit.mgdL
    var glucoseValues: [Glucose] = []
    var missedReadings: Int = 0
    var nightscoutApiSecret: String = ""
    var nightscoutHost: String = ""
    var nightscoutUpload: Bool = false
    var sensor: Sensor?
    var targetValue: Int = 100
    var selectedView: Int = 1
}