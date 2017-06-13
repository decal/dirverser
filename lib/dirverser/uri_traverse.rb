# encoding: utf-8

require 'uri'

module Dirverser
  module URI
    def traverse(suri, opts = { :trail_slash => true, :apply_reverse => false } )
      aret = []

      begin
        auri = URI(suri)
        path = auri.path
        arry = path.split('/')
        alen = arry.size
        last = alen - 1

        if opts[:apply_reverse]
          for i in 2 .. last
            astr = '/'
            astr << arry[i .. last].join('/')

            astr << '/' if !arry[last].index('.')
            astr = astr[0 .. -2] if !opts[:trail_slash] and astr[-1].eql?('/')

            auri.path = astr
            aret << auri.to_s
          end
        else
          for i in 1 .. last
            astr = ''
            astr << arry[0 .. i].join('/')

            astr << '/' if i != last or !arry[last].index('.')
            astr = astr[0 .. -2] if !opts[:trail_slash] and astr[-1].eql?('/')

            auri.path = astr
            aret << auri.to_s
          end
        end
      rescue Exception => e
        STDERR.puts(e)
      end

      aret
    end
  end
end
