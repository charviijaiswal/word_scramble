#!/bin/bash

if [[ -f "./correctWord.txt" ]]; then
	rm ./correctWord.txt
fi	
cat ./banner
echo ""
echo "LANGUAGES"
echo "========="
printf "\n1. Espanol (es)\n"
echo "2. English (en)"
echo "3. Portuguese (pt)"
echo "4. French (fr)"
echo "5. German (de)"
echo ""
read -p "Choose Language: " lang
echo ""
case $lang in 
	es)
		;;
	en)
		;;
	pt)
		;;
	fr)
		;;
	de)
		;;
	*)
		echo "## Error! Select from the above list: (xy) and without brackets."
		exit 1
		;;
esac

printf "\n[+] Checking if crunch is installed ...\n"
command -v crunch 1> /dev/null
if [[ $? -ne 0 ]]; then
	printf "[X] Crunch is not installed. Please install it using 'sudo apt install crunch'\n"
	exit 1
fi
printf "[+] Crunch is already installed.\n"
echo ""
read -p "Enter the scrambled word: " scram
printf "[+] Generating possible combinations ...\n\n"

crunch 0 0 -p $scram > temp1 

printf "\n[+] Sorting the generated list ...\n"
cat temp1 | sort > temp2

printf "[+] Finding the correct word ...\n"

case $lang in
	es)
		comm -12 temp2 dict/espanolDictionary.txt > ./correctWord.txt
		;;
	en)
		comm -12 temp2 dict/englishDictionary.txt > ./correctWord.txt
		;;
	pt)
		comm -12 temp2 dict/portugueseDictionary.txt > ./correctWord.txt
		;;
	fr)	comm -12 temp2 dict/frenchDictionary.txt > ./correctWord.txt
		;;
	de)
		comm -12 temp2 dict/germanDictionary.txt > ./correctWord.txt
		;;
esac

echo "[+] Removing temporary files ..."
rm temp*
sleep 1
echo "[+] Result saved in the file: ./correctWord.txt"
printf "\nResult: \n=======\n"
cat correctWord.txt



	


