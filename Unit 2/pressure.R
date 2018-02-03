summary(cars)

plot(cars)

summary(pressure)

plot(x = pressure$pressure, 
     y = pressure$temperature,
     main = "Temperature vs Pressure",
     xlab = "Pressure [mm of Hg]",
     ylab = "Temperature [deg C]",
     pch = 19)

plot(x = pressure$temperature, 
     y = pressure$pressure,
     main = "Pressure vs Temperature",
     xlab = "Temperature [deg C]",
     ylab = "Pressure [mm of Hg]",
     pch = 19)
