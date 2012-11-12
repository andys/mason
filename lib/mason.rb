module Mason

  class CommandFailed < StandardError; end

  # A replacement for FileUtils.cp_r that doesn't barf on symlinks to places that don't exist
  def self.cp_R(src, dest, options = {})
    return if options[:noop] 
    output = `cp -vR#{options[:preserve] ? 'p' : ''}#{options[:remove_destination] ? ' --remove-destination' : ''} #{[src,dest].flatten.join ' '}`
    raise "cp failed: #{output}" unless $?.exitstatus.zero?
  end

end
