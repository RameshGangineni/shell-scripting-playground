# https://www.thegeekstuff.com/2010/01/awk-introduction-tutorial-7-awk-print-examples/

vi employee.txt

cat employee.txt

# 1. Default behaviour
awk '{print;}' employee.txt

# 2. print lines match pattern
awk '/Thomas/' employee.txt
awk '/Thomas/
/Nisha/' employee.txt

# 3. print only specified filed
awk '{print $2,$5;}' employee.txt

# 5. Employee who have employee id greater than 200
awk '$1 > 200' employee.txt

# 6. print Technology employees
awk '$4 ~/Technology/' employee.txt

# 7. Number of employees in Technology
awk 'BEGIN { count=0;}
$4 ~ /Technology/ { count++; }
END { print "Number of employees in Technology Dept =",count;}' employee.txt


