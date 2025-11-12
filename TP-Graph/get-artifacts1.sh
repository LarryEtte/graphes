curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $(cat ~/token.gh)" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/LarryEtte/graphes/actions/artifacts > gh-artifacts.json
curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $(cat ~/token.gh)" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/LarryEtte/graphes/actions/artifacts/4543311108/zip \
  --output artifact.zip

unzip artifact
