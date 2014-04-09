all:
	@echo "targets; encrypt, decrypt, commit, encrypt-kdb, decrypt-kdb"

%-encrypt:
	./groupenc.sh sysadmins $*

%-decrypt:
	git pull
	gpg --quiet -d $*

commit:
	git commit passwords.kdb.asc

encrypt-kdb: passwords.kdb-encrypt

decrypt-kdb:
	git pull
	gpg --quiet -d 00-base.kdb.asc > 00-base.kdb

encrypt: encrypt-kdb
decrypt: decrypt-kdb
