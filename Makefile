test:
	../gogui/bin/gogui-regress -output tests/results "python ../Go0.py" @tests/all.tst

clean:
	rm -rf *.dat *.pyc *.html

pack:
	cd ..
	tar cfz assignment1.tgz pentium-single-core
	mv assignment1.tgz pentium single core
	cd pentium single core