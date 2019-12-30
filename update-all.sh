for f in ~/dotfiles/update/*.sh; do  # or wget-*.sh instead of *.sh
  bash "$f" -H
done
