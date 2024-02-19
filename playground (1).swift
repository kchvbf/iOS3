import Foundation

let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] 

let monthNames = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

for days in daysInMonths { 
    print(days) 
}

for i in 0..<12 { 
    print("Количество дней в месяце \(monthNames[i]) - \(daysInMonths[i]) ") 
}

let monthTuples = [("Январь", 31), ("Февраль", 28), ("Март", 31), ("Апрель", 30), ("Май", 31), ("Июнь", 30), ("Июль", 31), ("Август", 31), ("Сентябрь", 30), ("Октябрь", 31), ("Ноябрь", 30), ("Декабрь", 31)] 
for tuple in monthTuples { 
    print("Количество дней в месяце \(tuple.0) - \(tuple.1)") 
}

for i in (0..<12).reversed() { 
    print("Количество дней в месяце \(monthNames[i]) - \(daysInMonths[i])") 
    
}

let chosenDate = (month: 4, day: 14) 
var daysBefore = 0 
for i in 0..<chosenDate.month - 1 { 
    daysBefore += daysInMonths[i] 
}
daysBefore += chosenDate.day 
print("Количество дней до даты '\(monthNames[chosenDate.month-1]) \(chosenDate.day)' от начала года: \(daysBefore)")