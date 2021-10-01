# https://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/
touch demo_file
'''
THIS LINE IS THE 1ST UPPER CASE LINE IN THIS FILE.
this line is the 1st lower case line in this file.
This Line Has All Its First Character Of The Word With Upper Case.

Two lines above this line is empty.
And this is the last line.
'''
cat demo_file

THIS LINE IS THE 1ST UPPER CASE LINE IN THIS FILE.
this line is the 1st lower case line in this file.
This Line Has All Its First Character Of The Word With Upper Case.

Two lines above this line is empty.
And this is the last line.

# 1. Search for string
grep 'this' demo_file

# 2. Search for string in multiple files
grep 'this' demo_*

# 3. Case insensitive search
grep -i 'this' demo_file

# 4. regular expressions in file
grep 'lines.*empty*' demo_file

# 5. Search for full word
grep -i 'is' demo_file # returns all lines where is present irrespective of is a whole word or part of word
grep -iw 'is' demo_file # returns lines where is is the whole word

# 6.1 Display first N lines after match
grep -A 3 -i 'example' demo_text

# 6.2 Display N lines before match
grep -B 3 -i 'single word' demo_text

# 15. show number while showing results
grep -n -i 'this' demo_file



