# RunCloud custom features instalation
> Take 15 days free using on first upgrade - http://bit.ly/cdk_runcloud
___
> You can get [hosting](http://bit.ly/do_cdk) (and receive $10 credit!), [donate](https://www.paypal.me/cdkdev) or buy me a [coffee](https://www.buymeacoffee.com/cdk).

## Script features
* [nano syntax highlighting](https://github.com/scopatz/nanorc)
* [wp cli](https://wp-cli.org)
* [adminer](https://github.com/vrana/adminer) installer - run from your app public directory  `adminer.sh`
* [srdb](https://github.com/interconnectit/Search-Replace-DB) installer - run from your app public directory  `srdb.sh`
* [zImageOptimizer](https://github.com/zevilz/zImageOptimizer) - Simple bash script for lossless image optimizing - `zio.sh` 
* [rcdk](https://github.com/RunCloud-cdk/shell-api-wrapper) - Runcloud shell api wrapper - `rcdk` 
* [jq](https://github.com/stedolan/jq) - jq is a lightweight and flexible command-line JSON processor

## Install
1. Create the new sever - [link](https://manage.runcloud.io/servers/create)
2. Copy the RunCloud script to your server console
3. After runcloud installation run the custom script
```Bash
$ wget https://raw.githubusercontent.com/RunCloud-cdk/installation-script/master/script.sh -O- | sh
```

## ToDo
- [X] RunCloud Shell API wrapper
- [ ] App creation shell installer
- [ ] Bedrock installation script
