# promptbell 🔔

**promptbell** adds notification sounds to CLI-based AI coding assistants  
when user attention is needed.

It’s designed for tools like **Gemini** and **Codex**, where commands may
pause and wait for confirmation while you’re doing other things.

No daemons. No background services. Just a small, readable shell script.

---

## Install

### One-line install

```bash
curl -fsSL https://raw.githubusercontent.com/neotheicebird/promptbell/main/install.sh | sh
```

Then add promptbell to your shell:

```bash
promptbell --add
```

Restart your terminal (or run `source ~/.zshrc` / `source ~/.bashrc`).

---

## Usage

After installation, just run:

```bash
gemini
codex
```

You’ll hear a notification sound when user attention is needed.

Each run prints a short notice so you always know promptbell is active:

```
🔔 Notification sounds by promptbell. Disable or remove: promptbell --remove
```

> promptbell preserves rich CLI interfaces (colors, spinners, interactive UI)
> by running commands in a pseudo-terminal when available.

---

## Sounds

List available system sounds:

```bash
promptbell sounds list
```

Change the sound:

```bash
promptbell sounds use glass
promptbell sounds use ping
promptbell sounds use none
```

Sounds are chosen from common defaults already available on most systems.

---

## Remove

To disable promptbell completely:

```bash
promptbell --remove
```

This safely removes the shell integration from `.zshrc` / `.bashrc`
(backups are kept).

---

## Why promptbell?

Long-running AI CLI commands often pause waiting for:

- confirmations  
- approvals  
- interactive prompts  

promptbell lets you stop staring at the terminal and get notified only
when your attention is needed.

---

## License

MIT
