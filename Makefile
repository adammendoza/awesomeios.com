.PHONY: deps-install
deps-install:
	@swiftenv install

.PHONY: deps
deps:
	@swiftenv local DEVELOPMENT-SNAPSHOT-2016-02-08-a
	@swift build

.PHONY: run-dev
run-dev:
	@swift build --clean
	@swift build --configuration debug
	@echo "Running..."
	@.build/debug/awesomeiosdotcom

.PHONY: run-prod
run-prod:
	@swift build --clean
	@swift build --configuration release
	@echo "Running..."
	@.build/release/awesomeiosdotcom


.PHONY: clean
clean:
	@swift build --clean
	@rm -rf Packages/
