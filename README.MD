```
  ____  _ _   _                _        _     _____ _            _ _              _          _____  _       _ _        _    ____
 |  _ \(_) | | |              | |      | |   |  __ (_)          | (_)            | |        |  __ \(_)     (_) |      | |  / __ \
 | |_) |_| |_| |__  _   _  ___| | _____| |_  | |__) | _ __   ___| |_ _ __   ___  | |_ ___   | |  | |_  __ _ _| |_ __ _| | | |  | | ___ ___  __ _ _ __
 |  _ <| | __| '_ \| | | |/ __| |/ / _ \ __| |  ___/ | '_ \ / _ \ | | '_ \ / _ \ | __/ _ \  | |  | | |/ _` | | __/ _` | | | |  | |/ __/ _ \/ _` | '_ \
 | |_) | | |_| |_) | |_| | (__|   <  __/ |_  | |   | | |_) |  __/ | | | | |  __/ | || (_) | | |__| | | (_| | | || (_| | | | |__| | (_|  __/ (_| | | | |
 |____/|_|\__|_.__/ \__,_|\___|_|\_\___|\__| |_|   |_| .__/ \___|_|_|_| |_|\___|  \__\___/  |_____/|_|\__, |_|\__\__,_|_|  \____/ \___\___|\__,_|_| |_|
                                                     | |                                               __/ |
                                                     |_|                                              |___/

```
# Bitbucket Pipelines to Digital Ocean
Images loads Docker toolchain into Atlassian Bitbucket image (atlassian/default-image).
Allows the build process to create Docker images internally, as well as push images out to
Docker-machine instances.


## Credits
* Thanks to [Johannes Schickling](https://gist.github.com/schickling) for writing a mechanism to
extract the docker-machine credentials from a local instance.
