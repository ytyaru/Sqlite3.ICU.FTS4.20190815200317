SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

cd "$SCRIPT_DIR"
for path in `ls -1 | grep .sql | sort`; do
	echo $path
#	sqlite3 < $path
	sqlite3_29_0_icu_flags < $path
done

# https://qiita.com/m-sakano/items/7f1afc7eb452a1a57015
stty sane

