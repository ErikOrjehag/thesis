import fileinput

for line in fileinput.input():
    print(line.replace(",", " & ").replace("x", "$ \\times $")[:-2] + " \\\\")