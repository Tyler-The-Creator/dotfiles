# Pipe my public key to my clipboard. Fuck you, pay me.
alias pubkey="xclip -sel clip < ~/.ssh/id_ed25519.pub | echo '=> Public key copied to pasteboard.'"
