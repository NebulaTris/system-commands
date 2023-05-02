: '
Write a command that runs in a child shell, prints "hello" and exits with the exit code 179.
'

# Solution
script() { 
bash -c "echo hello; exit 179"
}
