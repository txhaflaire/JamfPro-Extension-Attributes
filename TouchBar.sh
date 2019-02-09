#!/bin/bash

if ioreg | grep "AppleEmbeddedOSSupportHost"; then
touch_bar="Yes"
else
touch_bar="No"
fi
echo "<result>$touch_bar</result>"


