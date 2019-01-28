rm -rf assignment1.tgz
rm -rf assignment1
mkdir assignment1
cp board_util.py assignment1/board_util.py
cp Go0.py assignment1/Go0.py
cp gtp_connection.py assignment1/gtp_connection.py
cp readme.txt assignment1/readme.txt
cp simple_board.py assignment1/simple_board.py
cp test_board_util.py assignment1/test_board_util.py
cp test_simple_board.py assignment1/test_simple_board.py
cp presubmission.log assignment1/presubmission.log
cp assignment1-public-tests.gtp assignment1/assignment1-public-tests.gtp
tar cfz assignment1.tgz assignment1
rm -rf assignment1