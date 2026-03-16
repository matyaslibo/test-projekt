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

## Manuál pro publikaci projektu na GitHub pomocí SSH a Git

1. **Ověření SSH připojení**
    ```bash
    ssh -T git@github.com
    ```
    Pokud je vše v pořádku, zobrazí se zpráva o úspěšném přihlášení.

2. **Nastavení jména a emailu v Gitu**
    ```bash
    git config --global user.name "Vaše Jméno"
    git config --global user.email "vas@email.com"
    ```

3. **Vytvoření nebo klonování repozitáře**
    - Pro nový projekt:
        ```bash
        mkdir muj-projekt
        cd muj-projekt
        git init
        ```
    - Pro existující repozitář:
        ```bash
        git clone git@github.com:uzivatel/jmeno-repozitare.git
        cd jmeno-repozitare
        ```

4. **Práce s Git**
    - Přidání změn:
        ```bash
        git add .
        ```
    - Commit změn:
        ```bash
        git commit -m "Popis změny"
        ```
    - Push na GitHub:
        ```bash
        git push origin main
        ```

5. **Kontrola na GitHubu**
    - Otevřete repozitář na GitHubu a ověřte, že změny byly úspěšně publikovány.

Tímto je projekt publikován a spravován pomocí SSH a Git.