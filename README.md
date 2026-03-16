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

## Manuál pro instalaci `cron` a nastavení spuštění skriptu každých 5 minut

1. **Instalace `cron` (pokud není nainstalován)**
    ```bash
    sudo apt update
    sudo apt install cron
    ```

2. **Ujistěte se, že služba `cron` běží**
    ```bash
    sudo systemctl enable cron
    sudo systemctl start cron
    ```

3. **Nastavení pravidelného spuštění skriptu**
    - Otevřete crontab pro úpravu:
        ```bash
        crontab -e
        ```
    - Přidejte řádek pro spuštění skriptu každých 5 minut (nahraďte `/cesta/ke/script.sh` skutečnou cestou):
        ```
        */5 * * * * /cesta/ke/script.sh
        ```

4. **Uložte a zavřete crontab**

Skript se nyní bude automaticky spouštět každých 5 minut.

## Manuál pro sledování logů pomocí `syslog` a `tail`

1. **Zajištění dostupnosti syslog**
    - Na většině distribucí Linuxu je syslog již nainstalován a běží jako součást služby (např. `rsyslog`).

2. **Sledování logů v reálném čase**
    - Pro sledování systémových logů použijte příkaz:
        ```bash
        tail -f /var/log/syslog
        ```
    - Tento příkaz zobrazí nové řádky v logu, jakmile jsou přidány.

3. **Použití filtru (volitelné)**
    - Pro zobrazení pouze relevantních řádků můžete použít `grep`:
        ```bash
        tail -f /var/log/syslog | grep "název_skriptu"
        ```

Tímto způsobem můžete monitorovat systémové události a výstupy skriptů v reálném čase.