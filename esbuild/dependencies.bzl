"""Starlark helper to fetch rules_esbuild dependencies.

Should be replaced by bzlmod for users of Bazel 6.0 and above.
"""

load("//esbuild/private:maybe.bzl", http_archive = "maybe_http_archive")

def rules_esbuild_dependencies():
    http_archive(
        name = "bazel_skylib",
        sha256 = "b8a1527901774180afc798aeb28c4634bdccf19c4d98e7bdd1ce79d1fe9aaad7",
        urls = ["https://github.com/bazelbuild/bazel-skylib/releases/download/1.4.1/bazel-skylib-1.4.1.tar.gz"],
    )

    http_archive(
        name = "aspect_bazel_lib",
        sha256 = "ee95bbc80f9ca219b93a8cc49fa19a2d4aa8649ddc9024f46abcdd33935753ca",
        strip_prefix = "bazel-lib-1.29.2",
        url = "https://github.com/aspect-build/bazel-lib/releases/download/v1.29.2/bazel-lib-v1.29.2.tar.gz",
    )

    http_archive(
        name = "aspect_rules_js",
        sha256 = "2a1e5d4400e2b49f6d36785aa894412670a0babfe7054e733b6a8f23c1b41e26",
        strip_prefix = "rules_js-1.23.1",
        url = "https://github.com/aspect-build/rules_js/releases/download/v1.23.1/rules_js-v1.23.1.tar.gz",
    )

    http_archive(
        name = "rules_nodejs",
        sha256 = "764a3b3757bb8c3c6a02ba3344731a3d71e558220adcb0cf7e43c9bba2c37ba8",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.8.2/rules_nodejs-core-5.8.2.tar.gz"],
    )
