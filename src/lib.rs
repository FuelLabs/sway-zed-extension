use zed_extension_api::{self as zed, Result};

struct SwayExtension;

impl zed::Extension for SwayExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        match language_server_id.as_ref() {
            "sway-lsp" => {
                let command = worktree
                    .which("forc-lsp")
                    .ok_or_else(|| "forc-lsp not found in PATH. Install with: curl https://install.fuel.network | sh")?;

                Ok(zed::Command {
                    command,
                    args: vec![],
                    env: Default::default(),
                })
            }
            _ => Err(format!("Unknown language server: {language_server_id}").into()),
        }
    }
}

zed::register_extension!(SwayExtension);
