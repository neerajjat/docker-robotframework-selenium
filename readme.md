

## Minimal docker image to run UI automation
\

Use this minimal image to spin up containers to run your UI automation tests with Selenium, Chrome, Python and Robotframework.

Benefits:
1. Runs UI inside the container so your laptop isn't blocked.
2. Scripts to be run could be stored on your laptop in current working directory and not bundled inside the image. \
You'll still get the reports and screenshots on your laptop.
3. Customization is kept to minimum to keep the image size under control thereby resulting in faster conatainer spin up.

Usage:\
export command="python -m robot tests/test1.robot"\
docker run --rm -v $PWD:/rsfw/  --env command=$command  --env token=$token  nch77884/docker-robotframework-selenium:latest