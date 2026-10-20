# Bandit OverTheWire Walkthrough
## Level 1
```
find / -name readme* 2>/dev/null
```

## Level 2
Hyphen as filename:
```
find / -name *- 2>/dev/null
```
## Level 3
Filename with spaces:
```
find / -name "--*" 2>/dev/null
```
## Level 4
Hidden file
```
ls -la
```
## Level 5
The password is stored in the only human-readable file in the inhere directory.
```
file ./*
cat ./-file07
```
## Level 6
file is :human-readable, 1033 bytes in size, not executable:
```
find . -type f -size 1033c ! -executable
```
## Level 7
file stored somewhere on the server and has all of the following properties:
owned by user bandit7, owned by group bandit6, 33 bytes in size
```
find / -type f -size 33c -user bandit7 -group bandit6 2>/dev/null
```
## Level 8
password is stored in the file data.txt next to the word millionth
```
grep "millionth" data.txt
```
## Level 9
password is stored in the file data.txt and is the only line of text that occurs only once:
```
sort data.txt | uniq -u
```
## Level 10
The password is stored in the file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters.
```
strings data.txt | grep "=="
```
## Level 11
The password is stored in the file data.txt, which contains base64 encoded data
```
cat data.txt | base64 -d
```
## Level 12
all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions
 ```
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```
## Level 13
