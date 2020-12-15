jshell https://git.io/jamal

echo
echo [INFO] Comparing all 'ANY.expected' files with 'ANY'

declare -i COUNT
COUNT=0
for file in $(find . -name \*.expected)
do
  DIFF=$(diff "$file" "${file%.expected}")
  if [ "$DIFF" != "" ]
  then
    echo "[ERROR] $file is not what is expected"
    let COUNT=$COUNT+1
  fi
done
if [ $COUNT -eq 0 ]; then
  echo "[INFO] Testing was successful"
else
  echo "[ERROR] There were $COUNT errors in the tests"
fi