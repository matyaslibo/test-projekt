# Publikace projektu na GitHub s použitím SSH klíčů

1. **Vytvoření SSH klíče**
    ```bash
    ssh-keygen -t ed25519 -C "vas@email.com"
    ```
    Postupujte podle instrukcí a klíč uložte (např. `~/.ssh/id_ed25519`).

2. **Zkopírování veřejného klíče**
    ```bash
    cat ~/.ssh/id_ed25519.pub
    ```
    Výstup zkopírujte.

3. **Přidání klíče na GitHub**
    - Na GitHubu jděte do **Settings > SSH and GPG keys > New SSH key**.
    - Vložte zkopírovaný klíč.

4. **Inicializace repozitáře**
    ```bash
    git init
    git add .
    git commit -m "První commit"
    ```

5. **Přidání vzdáleného repozitáře přes SSH**
    ```bash
    git remote add origin git@github.com:uzivatel/jmeno-repozitare.git
    ```

6. **Push na GitHub**
    ```bash
    git push -u origin main
    ```

Hotovo! Projekt je publikován na GitHubu přes SSH.