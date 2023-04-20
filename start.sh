if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone alappu280/File-To-Link
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File-To-Link
fi
cd /File-To-Link
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
