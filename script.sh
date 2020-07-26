#!/bin/bash
set -eu

SSHPATH="$HOME/.ssh"
mkdir -p "$SSHPATH"
echo "$DEPLOY_KEY" > "$SSHPATH/key"
chmod 600 "$SSHPATH/key"
DEPLOY_STRING="$REMOTE_USER@$REMOTE_SERVER:$REMOTE_PATH"
# sync it up
sh -c "rsync -ahz --force --delete --progress -e 'ssh -p22 -i $SSHPATH/key -o StrictHostKeyChecking=no -p $REMOTE_PORT' $GITHUB_WORKSPACE/$FOLDER $DEPLOY_STRING"
#rsync -ahz --force --delete --progress --exclude-from=$EXCLUDE_FILE -e "ssh -p22 -i"$KEY_FILE $LOCAL_PATH $REMOTE_USER@$SERVER:$REMOTE_PATH
