# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.6.1

EAPI=8

CRATES="
	addr2line@0.19.0
	adler@1.0.2
	ahash@0.7.6
	aho-corasick@1.0.1
	android_system_properties@0.1.5
	anstream@0.3.2
	anstyle-parse@0.2.0
	anstyle-query@1.0.0
	anstyle-wincon@1.0.1
	anstyle@1.0.0
	anyhow@1.0.71
	arrayvec@0.5.2
	async-scoped@0.7.1
	async-trait@0.1.68
	atomicwrites@0.4.1
	atty@0.2.14
	autocfg@1.1.0
	axum-core@0.3.4
	axum@0.6.18
	backtrace-ext@0.2.1
	backtrace@0.3.67
	base64@0.13.1
	base64@0.21.0
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bstr@0.2.17
	bumpalo@3.12.1
	bytecount@0.6.3
	byteorder@1.4.3
	bytes@1.4.0
	camino@1.1.4
	cargo-platform@0.1.2
	cargo_metadata@0.15.4
	cc@1.0.79
	cfg-expr@0.15.1
	cfg-if@1.0.0
	chrono@0.4.24
	clap@4.2.7
	clap_builder@4.2.7
	clap_derive@4.2.0
	clap_lex@0.4.1
	codespan-reporting@0.11.1
	color-eyre@0.6.2
	colorchoice@1.0.0
	config@0.13.3
	console-api@0.5.0
	console-subscriber@0.1.9
	console@0.15.5
	core-foundation-sys@0.8.4
	core-foundation@0.9.3
	crc32fast@1.3.2
	crossbeam-channel@0.5.8
	crossbeam-utils@0.8.15
	ctor@0.1.26
	cxx-build@1.0.94
	cxx@1.0.94
	cxxbridge-flags@1.0.94
	cxxbridge-macro@1.0.94
	debug-ignore@1.0.5
	dialoguer@0.10.4
	diff@0.1.13
	duct@0.13.6
	dunce@1.0.4
	either@1.8.1
	enable-ansi-support@0.2.1
	encode_unicode@0.3.6
	encoding_rs@0.8.32
	env_logger@0.10.0
	errno-dragonfly@0.1.2
	errno@0.3.1
	eyre@0.6.8
	fastrand@1.9.0
	filetime@0.2.21
	fixedbitset@0.4.2
	flate2@1.0.26
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.1.0
	future-queue@0.3.0
	futures-channel@0.3.28
	futures-core@0.3.28
	futures-executor@0.3.28
	futures-io@0.3.28
	futures-macro@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	futures@0.3.28
	getrandom@0.2.9
	gimli@0.27.2
	goldenfile@1.4.5
	guppy-workspace-hack@0.1.0
	guppy@0.15.2
	h2@0.3.18
	hashbrown@0.12.3
	hdrhistogram@7.5.2
	heck@0.4.1
	hermit-abi@0.1.19
	hermit-abi@0.2.6
	hermit-abi@0.3.1
	home@0.5.5
	http-body@0.4.5
	http@0.2.9
	httparse@1.8.0
	httpdate@1.0.2
	humantime-serde@1.1.1
	humantime@2.1.0
	hyper-rustls@0.23.2
	hyper-timeout@0.4.1
	hyper-tls@0.5.0
	hyper@0.14.26
	iana-time-zone-haiku@0.1.1
	iana-time-zone@0.1.56
	idna@0.3.0
	indent_write@2.2.0
	indenter@0.3.3
	indexmap@1.9.3
	indicatif@0.17.3
	indoc@2.0.1
	insta@1.29.0
	instant@0.1.12
	io-lifetimes@1.0.10
	ipnet@2.7.2
	is-terminal@0.4.7
	is_ci@1.1.1
	itertools@0.10.5
	itoa@1.0.6
	jobserver@0.1.26
	js-sys@0.3.61
	lazy_static@1.4.0
	libc@0.2.144
	libm@0.2.6
	link-cplusplus@1.0.8
	linked-hash-map@0.5.6
	linux-raw-sys@0.3.7
	log@0.4.17
	maplit@1.0.2
	matchers@0.1.0
	matchit@0.7.0
	memchr@2.5.0
	miette-derive@5.8.0
	miette@5.8.0
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.6.2
	miniz_oxide@0.7.1
	mio@0.8.6
	mukti-metadata@0.1.0
	native-tls@0.2.11
	nested@0.1.1
	nix@0.26.2
	nom-tracable-macros@0.9.0
	nom-tracable@0.9.0
	nom@7.1.3
	nom_locate@4.1.0
	num-integer@0.1.45
	num-traits@0.2.15
	num_cpus@1.15.0
	number_prefix@0.4.0
	object@0.30.3
	once_cell@1.17.1
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.87
	openssl@0.10.52
	os_pipe@1.1.4
	output_vt100@0.1.3
	owo-colors@3.5.0
	pathdiff@0.2.1
	percent-encoding@2.2.0
	petgraph@0.6.3
	pin-project-internal@1.0.12
	pin-project-lite@0.2.9
	pin-project@1.0.12
	pin-utils@0.1.0
	pkg-config@0.3.27
	portable-atomic@0.3.19
	ppv-lite86@0.2.17
	pretty_assertions@1.3.0
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@0.4.30
	proc-macro2@1.0.56
	proptest-derive@0.3.0
	proptest@1.1.0
	prost-derive@0.11.9
	prost-types@0.11.9
	prost@0.11.9
	quick-error@1.2.3
	quick-error@2.0.1
	quick-xml@0.23.1
	quick-xml@0.28.2
	quote@0.6.13
	quote@1.0.27
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rand_xorshift@0.3.0
	recursion@0.4.0
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	regex-automata@0.1.10
	regex-syntax@0.6.29
	regex-syntax@0.7.1
	regex@1.8.1
	reqwest@0.11.17
	ring@0.16.20
	rustc-demangle@0.1.23
	rustix@0.37.19
	rustls-pemfile@1.0.2
	rustls@0.20.8
	rustversion@1.0.12
	rusty-fork@0.3.0
	ryu@1.0.13
	schannel@0.1.21
	scratch@1.0.5
	sct@0.7.0
	security-framework-sys@2.8.0
	security-framework@2.8.2
	self_update@0.36.0
	semver@1.0.17
	serde@1.0.163
	serde_derive@1.0.163
	serde_ignored@0.1.7
	serde_json@1.0.96
	serde_path_to_error@0.1.11
	serde_spanned@0.6.1
	serde_urlencoded@0.7.1
	sharded-slab@0.1.4
	shared_child@1.0.0
	shell-words@1.1.0
	signal-hook-registry@1.4.1
	similar-asserts@1.4.2
	similar@2.2.1
	slab@0.4.8
	smallvec@1.10.0
	smawk@0.3.1
	smol_str@0.2.0
	socket2@0.4.9
	spin@0.5.2
	static_assertions@1.1.0
	strip-ansi-escapes@0.1.1
	strsim@0.10.0
	structmeta-derive@0.1.6
	structmeta@0.1.6
	supports-color@1.3.1
	supports-color@2.0.0
	supports-hyperlinks@2.1.0
	supports-unicode@2.0.0
	syn@0.15.44
	syn@1.0.109
	syn@2.0.16
	sync_wrapper@0.1.2
	tar@0.4.38
	target-lexicon@0.12.7
	target-spec-miette@0.1.0
	target-spec@1.4.0
	tempfile@3.5.0
	termcolor@1.2.0
	terminal_size@0.1.17
	test-case-core@3.1.0
	test-case-macros@3.1.0
	test-case@3.1.0
	test-strategy@0.3.0
	textwrap@0.15.2
	thiserror-impl@1.0.40
	thiserror@1.0.40
	thread_local@1.1.7
	time@0.1.45
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-io-timeout@1.2.0
	tokio-macros@2.1.0
	tokio-native-tls@0.3.1
	tokio-rustls@0.23.4
	tokio-stream@0.1.14
	tokio-util@0.7.8
	tokio@1.28.1
	toml@0.5.11
	toml@0.7.3
	toml_datetime@0.6.1
	toml_edit@0.19.8
	tonic@0.9.2
	tower-layer@0.3.2
	tower-service@0.3.2
	tower@0.4.13
	tracing-attributes@0.1.24
	tracing-core@0.1.30
	tracing-subscriber@0.3.17
	tracing@0.1.37
	try-lock@0.2.4
	twox-hash@1.6.3
	unarray@0.1.4
	unicode-bidi@0.3.13
	unicode-ident@1.0.8
	unicode-linebreak@0.1.4
	unicode-normalization@0.1.22
	unicode-segmentation@1.10.1
	unicode-width@0.1.10
	unicode-xid@0.1.0
	untrusted@0.7.1
	url@2.3.1
	urlencoding@2.1.2
	utf8parse@0.2.1
	uuid@1.3.2
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.4
	vte@0.10.1
	vte_generate_state_changes@0.1.1
	wait-timeout@0.2.0
	want@0.3.0
	wasi@0.10.0+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.84
	wasm-bindgen-futures@0.4.34
	wasm-bindgen-macro-support@0.2.84
	wasm-bindgen-macro@0.2.84
	wasm-bindgen-shared@0.2.84
	wasm-bindgen@0.2.84
	web-sys@0.3.61
	webpki-roots@0.22.6
	webpki@0.22.0
	win32job@1.0.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.42.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.0
	windows@0.48.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.0
	winnow@0.4.6
	winreg@0.10.1
	xattr@0.2.3
	yaml-rust@0.4.5
	yansi@0.5.1
	zeroize@1.6.0
	zstd-safe@6.0.5+zstd.1.5.4
	zstd-sys@2.0.8+zstd.1.5.5
	zstd@0.12.3+zstd.1.5.2
"

inherit cargo

DESCRIPTION="A next-generation test runner for Rust"
HOMEPAGE="https://nexte.st/"
SRC_URI=" https://github.com/nextest-rs/nextest/archive/refs/tags/${P}.tar.gz"
SRC_URI+=" ${CARGO_CRATE_URIS}"
S="${WORKDIR}"/nextest-${P}/${PN}

LICENSE="|| ( Apache-2.0 MIT )"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD ISC MIT MPL-2.0
	Unicode-DFS-2016
	|| ( CC0-1.0 MIT-0 )
"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/cargo-nextest"
