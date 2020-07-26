
#!/usr/bin/env bash

chmod +x inclusivelint ./common/
sudo mkdir /usr/bin/inclusivelinter
sudo cp -r inclusivelint ./common/ /usr/bin/inclusivelinter
echo "alias inclusivelint=/usr/bin/inclusivelinter/inclusivelint" >> ~/.bash_profile
source ~/.bash_profile
