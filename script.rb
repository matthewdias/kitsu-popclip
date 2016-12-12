		#!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

		require 'cgi'

		url = "https://kitsu.io/anime?text={query}"
		query = ENV['POPCLIP_TEXT']
		url.sub!(/\{query\}/,CGI.escape(query))

		%x{open "#{url}"}
