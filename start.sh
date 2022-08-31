if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/test00123/my_trdt_rep.git /my_trdt_rep
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /my_trdt_rep
fi
cd /my_trdt_rep
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
