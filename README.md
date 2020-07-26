# rsync-deploy

Deploy to a remote server using rsync.

example usage to sync everything in the workspace folder:
```
- name: deploy to server
        uses: houseofmaldorne/rsync-deploy@v2.0
        env:
          DEPLOY_KEY: ${{ secrets.REMOTE_SSH_KEY }}
          REMOTE_USER: ${{ secrets.REMOTE_USER }}
          REMOTE_SERVER: ${{ secrets.REMOTE_SERVER }}
          REMOTE_PORT: ${{ secrets.REMOTE_PORT }}
          REMOTE_PATH: ${{ secrets.REMOTE_PATH }}
          FOLDER: "./"
          EXCLUDE_LIST: ".github/workflows/exclude.txt"
```

If you only want to sync a specific subfolder you can put that folder in the `FOLDER` env var instead.

The `EXCLUDE_LIST` is a file with a list of files/directories that will be ignored during the rsync.

Project forked from [AEnterprise/rsync-deploy](https://github.com/AEnterprise/rsync-deploy).
