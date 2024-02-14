# Word-Scramble-Solver

This Linux compatible tool is created using the Shell Scripting.
It can solve the scrambled words of 5 different languages. 
The scrambled words from the following languages it supports: \
  $ Spanish \
  $ French \
  $ English \
  $ Portuguese \
  $ German
  
## Requirements

* Linux Platform 
* Crunch Tool

##### Download Crunch Tool in Debian 
`sudo apt install crunch`

## Installation & Usage
1. Download the repository zip file or
   Clone the repository using the following command.
   * `git clone https://github.com/anant21/wordScrambleSolver.git`

2. Change the directory to the directory of the tool. \
   `cd wordScrambleSolver`
   
3. Make the script executable. \
   `chmod +x solve.sh`
 
4. Start the tool by running the solve.sh script. \
   `./solve.sh`
   
5. Choose the Language: es/en/pt/fr/de. For example choose: `es` (Espanol - Spanish)

6. Enter the scrambled word. For example enter the word: `inarcben`

7. The tool will run and the result will be displayed at the end. For example, the result is `barnicen`.

8. The output is also saved in the text file with name: `correctWord.txt` present in the same directory.

9. We can check the text file using this command: `cat correctWord.txt` or `less correctWord.txt`.


### Thank You!
# word_scramble
