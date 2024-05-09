load("@org_tensorflow//tensorflow:workspace0.bzl", "tf_workspace0")
load("@org_tensorflow//tensorflow:workspace1.bzl", "tf_workspace1")
load("@org_tensorflow//tensorflow:workspace2.bzl", "tf_workspace2")
load("@org_tensorflow//tensorflow:workspace3.bzl", "tf_workspace3")
load("@rules_python//python:defs.bzl", "py_runtime")

def _configure_impl(ctx):
    print("Configuring tensorflow...")
    py_runtime(
        name = "python-3.9",
        files = ["@org_tensorflow//configure.py"],
    )

    tf_workspace3()
    tf_workspace2()
    tf_workspace1()
    tf_workspace0()

configure = module_extension(
    implementation = _configure_impl,
)
