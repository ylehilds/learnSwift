var pesos, reais, soles, total, pesosConvRate, reaisConvRate, solesConvRate: Double
pesos = 10
reais = 20
soles = 30

// 1 pesos is $0.050
pesosConvRate = 0.050
// 1 reais is $0.19
reaisConvRate = 0.19
// 1 soles is $0.25
solesConvRate = 0.25

total = pesos*pesosConvRate + reais*reaisConvRate + soles*solesConvRate

print("US Dollars = $\(total)")