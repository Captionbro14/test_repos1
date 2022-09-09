if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/test00123/test_repos.git /test_repos
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /test_repos
fi
cd /test_repos
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
