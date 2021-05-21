ROOT=..

RED="\e[31m"
GREEN="\e[32m"
NOCOLOR="\e[0m"
TIME_LIMIT=2.0

make radix -C ./files/

make -C $ROOT/

clear

if [[ -f "$ROOT/push_swap" ]]
then
	printf "${GREEN}push_swap compilation ok${NOCOLOR}\n\n"
else
	printf "${RED}push_swap compilation ko${NOCOLOR}\n\n"
	exit 1
fi

if [ $# -lt 1 ]
then
	printf "${RED}Error : not enough arguments${NOCOLOR}\n"
	printf "Usage : bash radix_sort_test.sh <stack numbers>\n"
	printf "Example : bash radix_sort_test.sh \"9 4 8 7\"\n"
	exit 1
fi

echo "" > ./trace/test_case.txt

for i in $@
do
echo $i >> ./trace/test_case.txt
done

($ROOT/push_swap $(cat ./trace/test_case.txt) > ./trace/output.txt) & pid=$!
(sleep $TIME_LIMIT && kill -HUP $pid) 2>/dev/null & watcher=$!
if wait $pid 2>/dev/null; then
	TLEFLAG=0
else
	printf "${RED}TLE${NOCOLOR}\n"
	exit 1
fi


cat ./trace/output.txt > radix_instructions
./files/checker_radix $(cat ./trace/test_case.txt)
rm -rf radix_instructions
echo "test_case and output are in trace"
