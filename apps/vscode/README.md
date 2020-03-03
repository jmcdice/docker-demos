Run a VSCode IDE server

```console
  $ cf push vsc --docker-image jmcdice/vscode-server:latest --no-start
  $ cf set-env vsc PASSWD changeme
  $ cf start vsc
```

You can now access VSCode in a browser: https://vsc.domain.com/ using the password above.

Once in, do: Terminal -> New Terminal

```console
  $ git checkout https://github.com/your/repo/
```

You'll see your repo in the current workspace.

![Example](./vscode.png)

