# libc - raw definitions and bindings to platforms' system libraries

`libc` provides definitions (and in the future bindings) to easily interoperate
with C code (or "C-like" code) on several platforms, and it does this with a
target and architecture aware API.

Platforms included:

* `aarch64-macos-darwin`
* PRs welcome -- see [Contributing](#contributing)

## Usage

Pin it in your OPAM:

```
opam pin add libc.0.0.1 git+https://github.com/leostera/libc.ml
```

Add it to your dune project:

```
(depends 
   (libc (>= "0.0.1"))
   ...)
```

Add it to your dune libraries:

```
(library
  (name my_lib)
  (libraries libc))
```

Use it in your code:

```ocaml
let flags = Libc.(ev_clear lor ev_receipt lor ev_add) in
(* ... *)
```

## Contributing

Including new platforms, while tedious, is pretty straightforward. We are using Rust's `libc` as a template for what are interesting/useful definitions on each platform.

That way, the easiest way to get started is to find the right platform version
of `libc` for Rust, and translate the definitions.

For example, for `aarch64-apple-darwin` the definitions are found
[here](https://docs.rs/libc/latest/aarch64-apple-darwin/src/libc/unix/bsd/apple/mod.rs.html#4438). If you use the 'platforms' drop-down you can find your platform, and we can
start porting from there.

Common types are currently included in the `types.ml` module, so you can `open
Types` at the top of your new module.

