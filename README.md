# Ludaro-Webhook
A small resource to use webhooks better!

## English
This resource allows you to send embeds to a Discord webhook with different options. You can also add screenshots of a client if you want.

### Requirements
If you want to use screenshots, you need the following resources installed and running:

- [screenshot-basic](https://github.com/citizenfx/screenshot-basic)
- [discord-screenshot](https://github.com/jaimeadf/discord-screenshot)

If you don't want to use screenshots, you can ignore this message.

### Usage
You can use this resource in two ways:

- Trigger an event from the client or the server side:

```lua
-- Client side
TriggerServerEvent("Ludaro:Webhook", color, actionn, description, footer, botname, botlogo, imagesource)

-- Server side
TriggerEvent("Ludaro:Webhook", color, actionn, description, footer, botname, botlogo, imagesource)
```

- Use an export from any script:

```lua
exports["es_extended"]:Webhook(color, actionn, description, footer, botname, botlogo, imagesource)
```

All of these variables are explained below and have a default value that you can change in the config. If you input nil then the default value applies.

### Variables

- `color`: The color of the embed as a decimal number. For example, 16711680 for red.
- `actionn`: The title of the embed.
- `description`: The description of the embed.
- `footer`: The text that appears at the bottom of the embed.
- `botname`: The name of the webhook bot.
- `botlogo`: The URL of the image that appears as the bot's avatar.
- `imagesource`: The source of the player that you want to take a screenshot of. This is optional and only works if you have screenshot-basic and discord-screenshot installed.

## Deutsch
Diese Ressource ermöglicht es Ihnen, Embeds an einen Discord-Webhook mit verschiedenen Optionen zu senden. Sie können auch Screenshots von einem Client hinzufügen, wenn Sie möchten.

### Anforderungen
Wenn Sie Screenshots verwenden möchten, benötigen Sie die folgenden Ressourcen installiert und laufend:

- [screenshot-basic](https://github.com/citizenfx/screenshot-basic)
- [discord-screenshot](https://github.com/jaimeadf/discord-screenshot)

Wenn Sie keine Screenshots verwenden möchten, können Sie diese Nachricht ignorieren.

### Verwendung
Sie können diese Ressource auf zwei Arten verwenden:

- Lösen Sie ein Ereignis von der Client- oder Serverseite aus:

```lua
-- Client-Seite
TriggerServerEvent("Ludaro:Webhook", color, actionn, description, footer, botname, botlogo, imagesource)

-- Server-Seite
TriggerEvent("Ludaro:Webhook", color, actionn, description, footer, botname, botlogo, imagesource)
```

- Verwenden Sie einen Export aus einem beliebigen Skript:

```lua
exports["LWebhook"]:Webhook(color, actionn, description, footer, botname, botlogo, imagesource)
```

Alle diese Variablen werden unten erklärt und haben einen Standardwert, den Sie in der Konfiguration ändern können. Wenn Sie nil eingeben, gilt der Standardwert.

### Variablen

- `color`: Die Farbe des Embeds als Dezimalzahl. Zum Beispiel 16711680 für rot.
- `actionn`: Der Titel des Embeds.
- `description`: Die Beschreibung des Embeds.
- `footer`: Der Text, der am unteren Rand des Embeds erscheint.
- `botname`: Der Name des Webhook-Bots.
- `botlogo`: Die URL des Bildes, das als Avatar des Bots erscheint.
- `imagesource`: Die Quelle des Spielers, von dem Sie einen Screenshot machen möchten. Dies ist optional und funktioniert nur, wenn Sie screenshot-basic und discord-screenshot installiert haben.
