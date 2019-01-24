test:
	../gogui/bin/gogui-regress -output tests/results "python ../Go0.py" @tests/all.tst

clean:
	rm -rf *.dat *.pyc *.html