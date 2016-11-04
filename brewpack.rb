#!/usr/bin/env ruby
require 'optparse'
require 'yaml'

$filename = './packages.yml'

OptionParser.new do |op|
  op.on('-p', '--packages', 'path of your packages.yml file') do |val|
    $filename = val
  end
end.parse!

$defaults = { 'update' => true, 'doctor' => true, 'prune' => true, 'analytics' => true, }

def command(command, output)
  STDOUT.puts output
  %x( #{command} )
end

def install
  user_options = YAML.load(File.read($filename))
  options = $defaults.merge(user_options)

  STDOUT.puts 'Tidying homebrew'

  if options['update']
    command 'brew update', 'Updating homebrew'
  end

  if options['doctor']
    command 'brew doctor', 'Letting homebrew see the Doctor'
  end

  if options['prune']
    command 'brew prune', 'Removing dead symlinks'
  end

  unless options['analytics']
    command 'brew analytics off', 'Opting out of homebrew analytics'
  end

  STDOUT.puts 'Installing packages with brew'
  options['packages'].each do |package|
    command "brew install #{package}", "Installing package '#{package}'"
  end

  command 'brew tap caskroom/cask', 'Setting up brew cask'

  STDOUT.puts 'Installing applications with brew cask'
  options['casks'].each do |cask|
    command "brew cask install #{cask}", "Installing application '#{cask}'"
  end

  STDOUT.puts 'install complete'
end

case ARGV[0]
when 'install', 'i'
  install
else
  STDOUT.puts <<-EOF
Unsupported or no command provided.

Available commands:
- brewpack install
EOF
end
