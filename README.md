# Sway Extension for Zed

Official Zed extension for the Sway programming language, providing comprehensive language support for Fuel smart contracts.

## Features

- **Language Server Protocol (LSP)** integration with `forc-lsp`
- **Syntax highlighting** via Tree-sitter grammar
- **Code completion** and IntelliSense
- **Error diagnostics** and warnings
- **Go to definition** and symbol navigation
- **Code formatting** with `swayfmt`
- **Hover documentation** and type information
- **Inlay hints** for types and parameters

## Prerequisites

Before using this extension, you need to install the Fuel toolchain:

### Installing the Fuel Toolchain

```bash
# Install fuelup (Fuel toolchain installer)
curl https://install.fuel.network | sh

# Install the latest Fuel toolchain
fuelup install latest
fuelup default latest
```

This will install:
- `forc` - The Fuel Orchestrator (Sway compiler)
- `forc-lsp` - The Sway Language Server
- `forc-fmt` - Sway code formatter
- `forc-doc` - Sway documentation generator
- `fuel-core` - The Fuel node implementation
- Other Fuel development tools

### Verify Installation

```bash
# Verify forc-lsp is available
forc-lsp --version
```

## Installation

### Via Zed Extensions (Recommended)

1. Open Zed
2. Press `Cmd/Ctrl + Shift + P` to open the command palette
3. Type "zed: extensions" and select it
4. Search for "Sway"
5. Click "Install" on the Sway extension

### Manual Installation (Development)

1. Clone this repository:
   ```bash
   git clone https://github.com/FuelLabs/sway-zed-extension.git
   cd sway-zed-extension
   ```

2. Install the extension in development mode:
   ```bash
   # In Zed, open the command palette and run:
   # "zed: install dev extension"
   # Then select this extension directory
   ```

## Usage

Once installed, the extension will automatically activate for `.sw` files. The language server will start automatically when you open a Sway project.

### Supported File Types

- `.sw` - Sway source files

### Language Server Features

The extension provides full LSP support including:

- **Diagnostics**: Real-time error and warning reporting
- **Completion**: Context-aware code completion
- **Hover**: Type information and documentation on hover
- **Go to Definition**: Navigate to symbol definitions
- **Find References**: Find all references to a symbol
- **Document Symbols**: File outline and symbol navigation
- **Formatting**: Code formatting via `swayfmt`
- **Rename**: Symbol renaming across files
- **Code Actions**: Quick fixes and refactoring suggestions

### Example Sway File

Create a new `.sw` file to test the extension:

```sway
script;

use std::logging::log;

fn main() {
    let number: u64 = 42;
    log(number);
}
```

## Project Structure

This extension includes:

- `extension.toml` - Extension metadata and configuration
- `src/lib.rs` - WebAssembly extension logic
- `languages/sway/config.toml` - Language configuration
- `languages/sway/highlights.scm` - Syntax highlighting rules

## Development

### Building

```bash
cargo check
cargo test
```

### Testing

The extension includes unit tests for core functionality:

```bash
cargo test
```

### Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Ensure `cargo test` passes
6. Submit a pull request

## Troubleshooting

### Language Server Not Starting

If the language server isn't working:

1. **Check forc-lsp installation**:
   ```bash
   which forc-lsp
   forc-lsp --version
   ```

2. **Verify PATH**: Ensure `forc-lsp` is in your system PATH

3. **Check Zed logs**: Open Zed logs to see any error messages:
   - Open command palette (`Cmd/Ctrl + Shift + P`)
   - Run "zed: open log file"

4. **Restart Zed**: Sometimes restarting Zed resolves LSP issues

### Extension Not Loading

If the extension isn't loading:

1. Check the Zed extensions panel for any error messages
2. Verify the extension is enabled
3. Try disabling and re-enabling the extension
4. Restart Zed

## Links

- [Sway Documentation](https://fuellabs.github.io/sway/)
- [Fuel Documentation](https://docs.fuel.network/)
- [Sway GitHub Repository](https://github.com/FuelLabs/sway)
- [Zed Extensions Documentation](https://zed.dev/docs/extensions)

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.

## Support

For issues and support:

- [GitHub Issues](https://github.com/FuelLabs/sway-zed-extension/issues)
- [Fuel Discord](https://discord.gg/fuel-network)
- [Sway Forum](https://forum.fuel.network/)
