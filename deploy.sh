trap exit ERR

mdbook build
aws s3 sync --delete ./book s3://playnplay-docs/docs/sdk --cache-control "max-age=0, s-maxage=31536000" --region ap-northeast-2
aws cloudfront create-invalidation --distribution-id ES4B5TMWN7LGX --paths "/*" --region ap-northeast-2 --no-cli-pager
aws cloudfront create-invalidation --distribution-id E1OGOMYU8WMB74 --paths "/*" --region ap-northeast-2 --no-cli-pager
