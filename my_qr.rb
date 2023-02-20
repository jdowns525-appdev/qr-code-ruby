puts "Would you like to make a QR Code?"
their_answer = gets
puts "Okay, enter desired URL to generate QR Code."
their_answer = gets



require "rqrcode"

# Use the RQRCode::QRCode class to encode some text
qrcode = RQRCode::QRCode.new(their_answer)

# Use the .as_png method to create a 500 pixels by 500 pixels image
png = qrcode.as_png({ :size => 500 })

# Write the image data to a file
IO.binwrite("sometext.png", png.to_s)
