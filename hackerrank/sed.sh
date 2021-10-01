# https://www.folkstalk.com/2012/01/sed-command-in-unix-examples.html

vi file.text
'''
unix is great os. unix is opensource. unix is free os.
learn operating system.
unixlinux which one you choose.
'''

cat file.text

# 1. Replacing or substituting string
sed 's/unix/linux/' file.text

# 2. Replacing the nth occurrence of pattern in a line
sed 's/unix/linux/2' file.text

# 3. Replacing all the occurrence of the pattern in a line
sed 's/unix/linux/g' file.text

# 4. Replacing from nth occurrence to all occurrences in a line
sed 's/unix/linux/3g' file.text

# 11. Replacing string on a specific line number.
sed '3 s/unix/linux/' file.text

# 12. Replacing string on a range of lines.
sed '1,3 s/unix/linux/' file.text

# 13. Replace on a lines which matches a pattern.
sed '/linux/ s/unix/centos/' file.txt

# 14. Deleting lines.
sed '2 d' file.text
sed '5, 8 d' demo_text
sed '5, $ d' demo_text

# 15. Duplicating lines
sed 'p' file.text

# 19. Change a line
sed '/unix/ c "changed line"' file.text




