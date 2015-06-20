Pod::Spec.new do |s|
  name = "ogg"
  libname = "lib" + name
  ver = "1.3.2"
  libver = libname + "-" + ver
  source = "http://downloads.xiph.org/releases/" + name + "/" + libver + ".tar.xz"
  sha1 = "5e525ec6a4135066932935c01d2c309ea5009f8d"

  s.name         = "Ogg"
  s.version      = ver
  s.summary      = "libogg media demuxer/muxer library"

  s.description  = <<-DESC
                   Xiph's Ogg media stream demuxer/muxer library, packaged for iOS.
                   Needed for decoding or encoding of Ogg Theora video and Vorbis audio.
                   DESC

  s.homepage     = "https://xiph.org/" + name + "/"

  s.license      = { :type => "BSD", :file => "COPYING" }

  s.author             = { "Brion Vibber (packager)" => "brion@pobox.com" }
  s.social_media_url   = "https://planet.xiph.org/"

  s.platform     = :ios, "6.0"

  s.source       = { :http => source,
                     :sha1 => sha1 }

  s.compiler_flags = "-O3",
                     "-Wno-conversion"
  s.source_files = libver + "/src",
                   libver + "/include/**/*.h"
  s.public_header_files = libver + "/include/**/*.h"
  s.header_dir = name
end
