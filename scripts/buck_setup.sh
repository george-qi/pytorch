cd third_party

echo "\n[Generating wrappers for cpuionfo]"
python generate-cpuinfo-wrappers.py

echo "\n[Generating wrappers for xnnpack]"
python generate-xnnpack-wrappers.py

# bazel-skylib
echo "\n[Downloading bazel-skylib-1.0.2]"
curl -L -o /tmp/bazel-skylib-1.0.2.tar.gz https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz
mkdir bazel-skylib
tar -xf /tmp/bazel-skylib-1.0.2.tar.gz -C bazel-skylib/

# glog
echo "\n[Downloading glog-0.4.0]"
curl -L -o /tmp/glog-0.4.0.tar.gz https://github.com/google/glog/archive/v0.4.0.tar.gz
tar -xf /tmp/glog-0.4.0.tar.gz
mv glog-0.4.0/ glog/

# ruy
echo "\n[Downloading ruy]"
curl -L -o /tmp/ruy-a09683b8da7164b9c5704f88aef2dc65aa583e5d.zip https://github.com/google/ruy/archive/a09683b8da7164b9c5704f88aef2dc65aa583e5d.zip
unzip -q /tmp/ruy-a09683b8da7164b9c5704f88aef2dc65aa583e5d.zip
mv ruy-a09683b8da7164b9c5704f88aef2dc65aa583e5d/ ruy/

echo "\nAll Done!"
