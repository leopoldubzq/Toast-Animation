import SwiftUI

enum ToastType: String, Hashable, CaseIterable {
    case info
    case success
    case error
    case warning
    
    var backgroundColor: Color {
        switch self {
        case .info:
            Color.blue.opacity(0.1)
        case .success:
            Color.green.opacity(0.1)
        case .error:
            Color.red.opacity(0.1)
        case .warning:
            Color.orange.opacity(0.1)
        }
    }

    var icon: String {
        switch self {
        case .info: 
            "message"
        case .success:
            "checkmark.circle"
        case .error: 
            "xmark.octagon"
        case .warning:
            "exclamationmark.triangle"
        }
    }
    
    var title: String {
        switch self {
        case .info:
            "Info toast message"
        case .success:
            "Success toast message"
        case .error:
            "Error toast message"
        case .warning:
            "Warning toast message"
        }
    }
    
    var description: String {
        switch self {
        case .info:
            "Info description"
        case .success:
            "Success description"
        case .error:
            "Error description"
        case .warning:
            "Warning description"
        }
    }

    var titleColor: Color {
        switch self {
        case .info:
                .blue
        case .success:
                .green
        case .error:
                .red
        case .warning:
                .orange
        }
    }
}
