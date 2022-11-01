if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Captionbro14/test_repos1.git /test_repos1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /test_repos1
fi
cd /test_repos1
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
