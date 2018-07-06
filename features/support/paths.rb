module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /^home\s?page$/
      '/'

    when /^a minha página do grupo$/
      '/groups'

    when /^a minha página de adicionar grupos$/
      '/groups/new'

    when /^a página do grupo (.+)$/
      "/groups/#{$2}"

    when /^a página de um dos meus grupos$/
      @group = current_user.profile_user.groups.take
      "/groups/#{@group.id}"

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
