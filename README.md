# AxOS Secure Boot Keys

The secure boot public key for signing the kernel and bootloader.

## Development Guidelines

Every developer working on this repository should be cautious and
follow the following guidelines:

- Never remove or remove the line "db.key" from .gitignore.
- Ensure that "db.key" file is secret.
- Run "setup_checksums.sh" every time "create_key.sh" is ran.
- Add the content of "db.key" inside [AxMirrors](https://github.com/AxOS-project/AxMirrors) repository secret "AXOS_SBP_KEY".