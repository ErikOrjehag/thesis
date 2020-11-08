import re
import fileinput

rx = r"\d+.\d+"

for line in fileinput.input():
    l = line.replace(",", " & ").replace("x", "$ \\times $").replace("\n", "") + " \\\\"
    nums = tuple(map(float, re.findall(rx, l)))
    l = re.sub(rx, "%.3f", l) % nums
    print(l)
    print("\\hline")