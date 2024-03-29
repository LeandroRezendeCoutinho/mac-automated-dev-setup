#! /bin/bash

# ruby setup
asdf plugin-add ruby

# nodejs setup
asdf plugin add nodejs
export GNUPGHOME="${ASDF_DIR:-$HOME/.asdf}/keyrings/nodejs" && mkdir -p "$GNUPGHOME" && chmod 0700 "$GNUPGHOME"
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
echo -e "\\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ~/.zshrc
