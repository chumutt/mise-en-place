
## How to use Roswell to build and share binaries

From the project root:

Run as a script:

    chmod +x roswell/mise-en-place.ros
    ./roswell/mise-en-place.ros

Build a binary:

    ros build roswell/mise-en-place.ros

and run it:

    ./roswell/mise-en-place

Or install it in ~/.roswell/bin:

    ros install roswell/mise-en-place.ros

It creates the binary in ~/.roswell/bin/
Run it:

    ~/.roswell/bin/mise-en-place [name]~&

Your users can install the script with ros install lain/mise-en-place

Use `+Q` if you don't have Quicklisp dependencies to save startup time.
Use `ros build --disable-compression` to save on startup time and loose on application size.


## See

- https://github.com/roswell/roswell/wiki/
- https://github.com/roswell/roswell/wiki/Reducing-Startup-Time
