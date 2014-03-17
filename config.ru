require 'bundler/setup'
require 'sinatra/base'

class LargeUploads < Sinatra::Base
  get "/" do
    %{
<html>
<body>
<form action="/" method="post" enctype="multipart/form-data">
<input type="file" name="file">
<input type="submit" value="Upload file">
</form>
</body>
</html>
    }
  end

  post "/" do
    params[:file][:tempfile].read(16).unpack("H*").first.scan(/..../).join(" ")
  end
end

run LargeUploads
