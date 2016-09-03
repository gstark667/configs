find ~/ -name libstdc++.so* -delete -print
ln -s /usr/lib32/libstdc++.so.6 ~/.local/share/Steam/ubuntu12_32/steam-runtime.old/i386/usr/lib/i386-linux-gnu/libstdc++.so.6
ln -s /usr/lib32/libstdc++.so.6.18 ~/.local/share/Steam/ubuntu12_32/steam-runtime.old/i386/usr/lib/i386-linux-gnu/libstdc++.so.6.18
ln -s /usr/lib/libstdc++.so.6 ~/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/x86_64-linux-gnu/libstdc++.so.6
ln -s /usr/lib/libstdc++.so.6.18 ~/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/x86_64-linux-gnu/libstdc++.so.6.18

find ~/ -name libgpg-error.so* -print -delete
ln -s /usr/lib32/libgpg-error.so.0 ~/.local/share/Steam/ubuntu12_32/steam-runtime/i386/lib/i386-linux-gnu/libgpg-error.so.0
ln -s /usr/lib32/libgpg-error.so.0.8.0 ~/.local/share/Steam/ubuntu12_32/steam-runtime/i386/lib/i386-linux-gnu/libgpg-error.so.0.8.0
ln -s /usr/lib/libgpg-error.so.0 ~/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/lib/x86_64-linux-gnu/libgpg-error.so.0
ln -s /usr/lib/libgpg-error.so.0.8.0 ~/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/lib/x86_64-linux-gnu/libgpg-error.so.0.8.0

find ~/ -name libudev.so* -print -delete
ln -s /usr/lib32/libudev.so.1 ~/.local/share/Steam/ubuntu12_32/steam-runtime/i386/lib/i386-linux-gnu/libudev.so.0
ln -s /usr/lib/libudev.so.1 ~/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/lib/x86_64-linux-gnu/libudev.so.0
