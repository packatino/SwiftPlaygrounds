/**
Playing with some options to create more meaningful logs
*/

import UIKit


enum RMLogType
{
    case Error
    case Warning
    case Success
    case Info
    case TempDebugging
    case None
    
    var toString : String
    {
        switch self
        {
            case .Error:            return "🔴"
            case .Warning:          return "⚠️"
            case .Success:          return "✅"
            case .Info:             return "⚪️"
            case .TempDebugging:    return "🔵"
            default:                return "🔵"
        }
    }
}


// MARK: - Logging messages

/// Logs a message with an icon which depends on the provided type
func logMessage(message: String, type: RMLogType = RMLogType.None)
{
    println("\(type.toString) \(message)")
}

// MARK: -

/// Logs a message with an error symbol
func logError(message: String)
{
    logMessage(message, type: RMLogType.Error)
}

/// Logs a message with a warning symbol
func logWarning(message: String)
{
    logMessage(message, type: RMLogType.Warning)
}

/// Logs a message with a success symbol
func logSuccess(message: String)
{
    logMessage(message, type: RMLogType.Success)
}

/// Logs a message with an info symbol
func logInfo(message: String)
{
    logMessage(message, type: RMLogType.Info)
}

/// Logs a message with a symbol for temporary messages
func logTemp(message: String)
{
    logMessage(message, type: RMLogType.TempDebugging)
}


// MARK: - Special logs

/// Logs a single line to get an optical separation between different logs
func logLine()
{
    println("---------------------------------------------")
}

/// Logs a double line to get an optical separation between different logs
func logLineTwice()
{
    println("=============================================")
}


// MARK: - Examples

logMessage("This is a message without a type")
logLine()
logError("Failed to load image!")
logWarning("User has disabled location services.")
logSuccess("Successfully uploaded picture")
logInfo("Location updated: 10.123456, 20.987654")
logTemp("This is just a temporary message for debugging")
logLineTwice()

