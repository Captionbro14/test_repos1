if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
 
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /test_repos
fi
cd /test_repos
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
