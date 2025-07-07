#!/usr/bin/env bash
#!/bin/bash

###################### xibo.org.uk -> signhub.org.cn ######################
# replace file content
# grep -rlI 'xibo.org.uk' . | xargs sed 's/xibo.org.uk/signhub.org.cn/g' -i

echo "replace file content from xibo.org.uk to signhub.org.cn"
for file in $(grep -rlI 'xibo.org.uk' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xibo.org.uk in $file"
  sed 's/xibo.org.uk/signhub.org.cn/g' -i $file
done

###################### xibosignage -> signhub ######################
# replace file content
# grep -rlI 'xibosignage' . | xargs sed 's/xibosignage/signhub/g' -i

echo "replace file content from xibosignage to signhub"
for file in $(grep -rlI 'xibosignage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xibosignage in $file"
  sed 's/xibosignage/signhub/g' -i $file
done

echo "replace file content from Xibosignage to Signhub"
for file in $(grep -rlI 'Xibosignage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace Xibosignage in $file"
  sed 's/Xibosignage/Signhub/g' -i $file
done

echo "replace file content from XiboSignage to SignHub"
for file in $(grep -rlI 'XiboSignage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XiboSignage in $file"
  sed 's/XiboSignage/SignHub/g' -i $file
done

echo "replace file content from XIBOSignage to SignHUB"
for file in $(grep -rlI 'XIBOSignage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XIBOSignage in $file"
  sed 's/XIBOSignage/SignHUB/g' -i $file
done

echo "replace file content from XIBOSIGNAGE to SIGNHUB"
for file in $(grep -rlI 'XIBOSIGNAGE' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XIBOSIGNAGE in $file"
  sed 's/XIBOSIGNAGE/SIGNHUB/g' -i $file
done

echo "replace file content from xiboSIGNAGE to signHUB"
for file in $(grep -rlI 'xiboSIGNAGE' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xiboSIGNAGE in $file"
  sed 's/xiboSIGNAGE/signHUB/g' -i $file
done

# replace directory
for i in {1..5}
do
  echo "replace directory from xibosignage to signhub in loop $i"
  find . -type d | grep "xibosignage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibosignage/,"signhub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from Xibosignage to Signhub in loop $i"
  find . -type d | grep "Xibosignage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibosignage/,"Signhub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XiboSignage to SignHub in loop $i"
  find . -type d | grep "XiboSignage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XiboSignage/,"SignHub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XIBOSignage to SignHUB in loop $i"
  find . -type d | grep "XIBOSignage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBOSignage/,"SignHUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XIBOSIGNAGE to SIGNHUB in loop $i"
  find . -type d | grep "XIBOSIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBOSIGNAGE/,"SIGNHUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from xiboSIGNAGE to signHUB in loop $i"
  find . -type d | grep "xiboSIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xiboSIGNAGE/,"signHUB");
        printf mvCmd,old,$0;
      }' | sh
done

# replace file name
for i in {1..5}
do
  echo "replace file name from xibosignage to signhub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "xibosignage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibosignage/,"signhub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from Xibosignage to Signhub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "Xibosignage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibosignage/,"Signhub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XiboSignage to SignHub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XiboSignage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XiboSignage/,"SignHub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XIBOSignage to SignHUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XIBOSignage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBOSignage/,"SignHUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XIBOSIGNAGE to SIGNHUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XIBOSIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBOSIGNAGE/,"SIGNHUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from xiboSIGNAGE to signHUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "xiboSIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xiboSIGNAGE/,"signHUB");
        printf mvCmd,old,$0;
      }' | sh
done

###################### xibo-signage -> sign-hub ######################
# replace file content
# grep -rlI 'xibo-signage' . | xargs sed 's/xibo-signage/sign-hub/g' -i

echo "replace file content from xibo-signage to sign-hub"
for file in $(grep -rlI 'xibo-signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xibo-signage in $file"
  sed 's/xibo-signage/sign-hub/g' -i $file
done

echo "replace file content from Xibo-signage to Sign-hub"
for file in $(grep -rlI 'Xibo-signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace Xibo-signage in $file"
  sed 's/Xibo-signage/Sign-hub/g' -i $file
done

echo "replace file content from Xibo-Signage to Sign-Hub"
for file in $(grep -rlI 'Xibo-Signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace Xibo-Signage in $file"
  sed 's/Xibo-Signage/Sign-Hub/g' -i $file
done

echo "replace file content from XIBO-Signage to Sign-HUB"
for file in $(grep -rlI 'XIBO-Signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XIBO-Signage in $file"
  sed 's/XIBO-Signage/Sign-HUB/g' -i $file
done

echo "replace file content from XIBO-SIGNAGE to SIGN-HUB"
for file in $(grep -rlI 'XIBO-SIGNAGE' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XIBO-SIGNAGE in $file"
  sed 's/XIBO-SIGNAGE/SIGN-HUB/g' -i $file
done

echo "replace file content from xibo-SIGNAGE to sign-HUB"
for file in $(grep -rlI 'xibo-SIGNAGE' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xibo-SIGNAGE in $file"
  sed 's/xibo-SIGNAGE/sign-HUB/g' -i $file
done

# replace directory
for i in {1..5}
do
  echo "replace directory from xibo-signage to sign-hub in loop $i"
  find . -type d | grep "xibo-signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo-signage/,"sign-hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from Xibo-signage to Sign-hub in loop $i"
  find . -type d | grep "Xibo-signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo-signage/,"Sign-hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from Xibo-Signage to Sign-Hub in loop $i"
  find . -type d | grep "Xibo-Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo-Signage/,"Sign-Hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XIBO-Signage to Sign-HUB in loop $i"
  find . -type d | grep "XIBO-Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO-Signage/,"Sign-HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XIBO-SIGNAGE to SIGN-HUB in loop $i"
  find . -type d | grep "XIBO-SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO-SIGNAGE/,"SIGN-HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from xibo-SIGNAGE to sign-HUB in loop $i"
  find . -type d | grep "xibo-SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo-SIGNAGE/,"sign-HUB");
        printf mvCmd,old,$0;
      }' | sh
done

# replace file name
for i in {1..5}
do
  echo "replace file name from xibo-signage to sign-hub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "xibo-signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo-signage/,"sign-hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from Xibo-signage to Sign-hub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "Xibo-signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo-signage/,"Sign-hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from Xibo-Signage to Sign-Hub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "Xibo-Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo-Signage/,"Sign-Hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XIBO-Signage to Sign-HUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XIBO-Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO-Signage/,"Sign-HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XIBO-SIGNAGE to SIGN-HUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XIBO-SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO-SIGNAGE/,"SIGN-HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from xibo-SIGNAGE to sign-HUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "xibo-SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo-SIGNAGE/,"sign-HUB");
        printf mvCmd,old,$0;
      }' | sh
done

###################### xibo_signage -> sign_hub ######################
# replace file content
# grep -rlI 'xibo_signage' . | xargs sed 's/xibo_signage/sign_hub/g' -i

echo "replace file content from xibo_signage to sign_hub"
for file in $(grep -rlI 'xibo_signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xibo_signage in $file"
  sed 's/xibo_signage/sign_hub/g' -i $file
done

echo "replace file content from Xibo_signage to Sign_hub"
for file in $(grep -rlI 'Xibo_signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace Xibo_signage in $file"
  sed 's/Xibo_signage/Sign_hub/g' -i $file
done

echo "replace file content from Xibo_Signage to Sign_Hub"
for file in $(grep -rlI 'Xibo_Signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace Xibo_Signage in $file"
  sed 's/Xibo_Signage/Sign_Hub/g' -i $file
done

echo "replace file content from XIBO_Signage to Sign_HUB"
for file in $(grep -rlI 'XIBO_Signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XIBO_Signage in $file"
  sed 's/XIBO_Signage/Sign_HUB/g' -i $file
done

echo "replace file content from XIBO_SIGNAGE to SIGN_HUB"
for file in $(grep -rlI 'XIBO_SIGNAGE' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XIBO_SIGNAGE in $file"
  sed 's/XIBO_SIGNAGE/SIGN_HUB/g' -i $file
done

echo "replace file content from xibo_SIGNAGE to sign_HUB"
for file in $(grep -rlI 'xibo_SIGNAGE' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xibo_SIGNAGE in $file"
  sed 's/xibo_SIGNAGE/sign_HUB/g' -i $file
done

# replace directory
for i in {1..5}
do
  echo "replace directory from xibo_signage to sign_hub in loop $i"
  find . -type d | grep "xibo_signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo_signage/,"sign_hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from Xibo_signage to Sign_hub in loop $i"
  find . -type d | grep "Xibo_signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo_signage/,"Sign_hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from Xibo_Signage to Sign_Hub in loop $i"
  find . -type d | grep "Xibo_Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo_Signage/,"Sign_Hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XIBO_Signage to Sign_HUB in loop $i"
  find . -type d | grep "XIBO_Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO_Signage/,"Sign_HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XIBO_SIGNAGE to SIGN_HUB in loop $i"
  find . -type d | grep "XIBO_SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO_SIGNAGE/,"SIGN_HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from xibo_SIGNAGE to sign_HUB in loop $i"
  find . -type d | grep "xibo_SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo_SIGNAGE/,"sign_HUB");
        printf mvCmd,old,$0;
      }' | sh
done

# replace file name
for i in {1..5}
do
  echo "replace file name from xibo_signage to sign_hub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "xibo_signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo_signage/,"sign_hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from Xibo_signage to Sign_hub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "Xibo_signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo_signage/,"Sign_hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from Xibo_Signage to Sign_Hub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "Xibo_Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo_Signage/,"Sign_Hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XIBO_Signage to Sign_HUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XIBO_Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO_Signage/,"Sign_HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XIBO_SIGNAGE to SIGN_HUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XIBO_SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO_SIGNAGE/,"SIGN_HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from xibo_SIGNAGE to sign_HUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "xibo_SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo_SIGNAGE/,"sign_HUB");
        printf mvCmd,old,$0;
      }' | sh
done

###################### xibo signage -> sign hub ######################
# replace file content
# grep -rlI 'xibo signage' . | xargs sed 's/xibo signage/sign hub/g' -i

echo "replace file content from xibo signage to sign hub"
for file in $(grep -rlI 'xibo signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xibo signage in $file"
  sed 's/xibo signage/sign hub/g' -i $file
done

echo "replace file content from Xibo signage to Sign hub"
for file in $(grep -rlI 'Xibo signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace Xibo signage in $file"
  sed 's/Xibo signage/Sign hub/g' -i $file
done

echo "replace file content from Xibo Signage to Sign Hub"
for file in $(grep -rlI 'Xibo Signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace Xibo Signage in $file"
  sed 's/Xibo Signage/Sign Hub/g' -i $file
done

echo "replace file content from XIBO Signage to Sign HUB"
for file in $(grep -rlI 'XIBO Signage' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XIBO Signage in $file"
  sed 's/XIBO Signage/Sign HUB/g' -i $file
done

echo "replace file content from XIBO SIGNAGE to SIGN HUB"
for file in $(grep -rlI 'XIBO SIGNAGE' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XIBO SIGNAGE in $file"
  sed 's/XIBO SIGNAGE/SIGN HUB/g' -i $file
done

echo "replace file content from xibo SIGNAGE to sign HUB"
for file in $(grep -rlI 'xibo SIGNAGE' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xibo SIGNAGE in $file"
  sed 's/xibo SIGNAGE/sign HUB/g' -i $file
done

# replace directory
for i in {1..5}
do
  echo "replace directory from xibo signage to sign hub in loop $i"
  find . -type d | grep "xibo signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo signage/,"sign hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from Xibo signage to Sign hub in loop $i"
  find . -type d | grep "Xibo signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo signage/,"Sign hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from Xibo Signage to Sign Hub in loop $i"
  find . -type d | grep "Xibo Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo Signage/,"Sign Hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XIBO Signage to Sign HUB in loop $i"
  find . -type d | grep "XIBO Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO Signage/,"Sign HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XIBO SIGNAGE to SIGN HUB in loop $i"
  find . -type d | grep "XIBO SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO SIGNAGE/,"SIGN HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from xibo SIGNAGE to sign HUB in loop $i"
  find . -type d | grep "xibo SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo SIGNAGE/,"sign HUB");
        printf mvCmd,old,$0;
      }' | sh
done

# replace file name
for i in {1..5}
do
  echo "replace file name from xibo signage to sign hub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "xibo signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo signage/,"sign hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from Xibo signage to Sign hub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "Xibo signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo signage/,"Sign hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from Xibo Signage to Sign Hub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "Xibo Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo Signage/,"Sign Hub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XIBO Signage to Sign HUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XIBO Signage[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO Signage/,"Sign HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XIBO SIGNAGE to SIGN HUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XIBO SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO SIGNAGE/,"SIGN HUB");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from xibo SIGNAGE to sign HUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "xibo SIGNAGE[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo SIGNAGE/,"sign HUB");
        printf mvCmd,old,$0;
      }' | sh
done

###################### xibo -> signhub ######################
# replace file content
# grep -rlI 'xibo' . | xargs sed 's/xibo/signhub/g' -i

echo "replace file content from xibo to signhub"
for file in $(grep -rlI 'xibo' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xibo in $file"
  sed 's/xibo/signhub/g' -i $file
done

echo "replace file content from Xibo to SignHub"
for file in $(grep -rlI 'Xibo' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace Xibo in $file"
  sed 's/Xibo/SignHub/g' -i $file
done

echo "replace file content from XIBO to SIGNHUB"
for file in $(grep -rlI 'XIBO' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XIBO in $file"
  sed 's/XIBO/SIGNHUB/g' -i $file
done

# replace directory
for i in {1..5}
do
  echo "replace directory from xibo to signhub in loop $i"
  find . -type d | grep "xibo[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo/,"signhub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from Xibo to SignHub in loop $i"
  find . -type d | grep "Xibo[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo/,"SignHub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XIBO to SIGNHUB in loop $i"
  find . -type d | grep "XIBO[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO/,"SIGNHUB");
        printf mvCmd,old,$0;
      }' | sh
done

# replace file name
for i in {1..5}
do
  echo "replace file name from xibo to signhub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "xibo[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xibo/,"signhub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from Xibo to SignHub in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "Xibo[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xibo/,"SignHub");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XIBO to SIGNHUB in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XIBO[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XIBO/,"SIGNHUB");
        printf mvCmd,old,$0;
      }' | sh
done

###################### xmr -> smr ######################
# replace file content
# grep -rlI 'xmr' . | xargs sed 's/xmr/smr/g' -i

echo "replace file content from xmr to smr"
for file in $(grep -rlI 'xmr' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace xmr in $file"
  sed 's/xmr/smr/g' -i $file
done

echo "replace file content from Xmr to Smr"
for file in $(grep -rlI 'Xmr' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace Xmr in $file"
  sed 's/Xmr/Smr/g' -i $file
done

echo "replace file content from XMR to SMR"
for file in $(grep -rlI 'XMR' --exclude=rebranding.sh --exclude=*.gz --exclude=*.bz2 --exclude=*.tgz --exclude=*.zip --exclude=*.otf --exclude=*.ttc --exclude=*.yuv --exclude=*.swf --exclude=*.jpg --exclude=*.png --exclude=*.jar --exclude=*.class --exclude=*.war --exclude-dir=.git .)
do
  echo "replace XMR in $file"
  sed 's/XMR/SMR/g' -i $file
done

# replace directory
for i in {1..5}
do
  echo "replace directory from xmr to smr in loop $i"
  find . -type d | grep "xmr[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xmr/,"smr");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from Xmr to Smr in loop $i"
  find . -type d | grep "Xmr[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xmr/,"Smr");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace directory from XMR to SMR in loop $i"
  find . -type d | grep "XMR[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XMR/,"SMR");
        printf mvCmd,old,$0;
      }' | sh
done

# replace file name
for i in {1..5}
do
  echo "replace file name from xmr to smr in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "xmr[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/xmr/,"smr");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from Xmr to Smr in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "Xmr[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/Xmr/,"Smr");
        printf mvCmd,old,$0;
      }' | sh
done

for i in {1..5}
do
  echo "replace file name from XMR to SMR in loop $i"
  find . -type f \( ! -iname "rebranding.sh" \) | grep "XMR[^/]*$" | awk -v mvCmd='mv -v "%s" "%s"\n' \
      '{ old=$0;
        gsub(/XMR/,"SMR");
        printf mvCmd,old,$0;
      }' | sh
done
