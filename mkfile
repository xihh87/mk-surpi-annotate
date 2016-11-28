results/annotate/%.sam:D:	data/%.sam
	mkdir -p `dirname $target`
	cores=24
	taxonomy_db_directory=/labs/mksurpi/reference/taxonomy
	./taxonomy_lookup.pl \
		"$prereq" \
		sam \
		nucl \
		"$cores" \
		"$taxonomy_db_directory" \
	&& mv $prereq.all.annotated $target \
	|| rm $prereq.all.annotated