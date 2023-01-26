package_debug:
	@echo "Using remote build host to build binary, and local Docker to inject binary into image"
	cd polkadot && cargo remote --remote build-host-remote -- build && rsync -avzhe ssh --progress bredamatt@build-host-remote:/home/bredamatt/remote-builds/polkadot/target/debug/polkadot polkadot && chmod +x polkadot && docker build -f scripts/ci/dockerfiles/polkadot_injected.Dockerfile -t bredamatt/tracing-debug:latest .

