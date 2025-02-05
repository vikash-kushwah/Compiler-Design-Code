# Compiler Design Lab

A collection of Lex programs for compiler design implementations.

## Prerequisites

- Flex (Lexical Analyzer Generator)
- GCC (GNU Compiler Collection)

## Installation

1. Install Flex and GCC on your system:
   ```sh
   # For Ubuntu/Debian
   sudo apt-get install flex gcc
   
   # For Fedora
   sudo dnf install flex gcc
   ```

## Usage

Clone the repository:

```sh
git clone https://github.com/vikash-kushwah/Compiler-Design-Code.git
cd Compiler-Design-Code
```

Compile the Lex file:

```sh
flex filename.l
gcc lex.yy.c -o output
```

Run the compiled program:

```sh
./output
```

## Contributing

Contributions are welcome! Please submit a pull request or open an issue.
