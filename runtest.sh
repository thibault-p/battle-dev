IN="$1/in"
OUT="$1/out"
CHAL="/tmp/test_out.txt"

NBTEST=`ls -1 $IN/* | wc -l`


echo "Run tests..."
NTEST=1
for file in `ls -1 $IN`
do
	echo "Test $NTEST/$NBTEST"
	INPUT=$IN/$file
	RUNCMD="./main < $INPUT > $CHAL"
	echo "\tRunning: $RUNCMD"
	eval $RUNCMD
	status=$?
	if [ $status -ne 0 ]; then
        	echo "[FAILED] Run crashed"
		cat $CHAL
		exit 1
	fi
	diff $OUT/output$NTEST.txt $CHAL > /tmp/diff.txt
	status=$?
        if [ $status -ne 0 ]; then
                echo "[FAILED] Comparaison failed"
                cat /tmp/diff.txt
                exit 1
        fi

	echo "[OK]"
	NTEST=$((NTEST+1))
done


