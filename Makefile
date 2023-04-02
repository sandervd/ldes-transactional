test: test-valid test-invalid

test-valid: shacl
	./shacl/bin/shaclvalidate.sh -datafile valid-object-graph.ttl -shapesfile object-graph-shacl.ttl

test-invalid: shacl
	./shacl/bin/shaclvalidate.sh -datafile invalid-object-graph.ttl -shapesfile object-graph-shacl.ttl


shacl:
	# Download TopBraid SHALC validator.
	rm -f shacl
	wget https://repo1.maven.org/maven2/org/topbraid/shacl/1.4.2/shacl-1.4.2-bin.zip
	unzip shacl-1.4.2-bin.zip
	rm shacl-1.4.2-bin.zip
	ln -s shacl-* shacl
	chmod +x shacl/bin/shaclvalidate.sh
