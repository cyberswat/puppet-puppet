# == Class: header
#
# Creates a standard header that should be used in all files managed by puppet..
#
# === Variables
#
# [*mtime*]
#   The modification time of the file being tagged.
#
module Puppet::Parser::Functions
  newfunction(:header) do |args|
    Puppet::Parser::Functions.autoloader.loadall
    mtime = args[0].to_s
    header = "###############################################################################\n"
    header << "#                                                                             #\n"
    header << "#       This file is managed by puppet ... changes will be over-written       #\n"
    header << "#             Last modification: " + mtime + "               #\n"
    header << "#                                                                             #\n"
    header << "###############################################################################\n"
    return header
  end
end
